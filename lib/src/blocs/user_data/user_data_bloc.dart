import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:health_balance/src/blocs/user/user_bloc.dart';
import 'package:health_balance/src/formz/user/birth_date.dart';
import 'package:health_balance/src/formz/user/full_name.dart';
import 'package:health_balance/src/formz/user/gender.dart';
import 'package:health_balance/src/models/user/user.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'user_data_bloc.freezed.dart';

@freezed
abstract class UserDataEvent with _$UserDataEvent {
  const UserDataEvent._();

  const factory UserDataEvent.fullNameChanged(String fullName) =
      FullNameChangedUserDataEvent;

  const factory UserDataEvent.birthDateChanged(String date) =
      BirthDateChangedUserDataEvent;

  const factory UserDataEvent.genderChanged(Gender gender) =
      GenderChangedUserDataEvent;

  const factory UserDataEvent.submit() = SubmitUserDataEvent;
}

class UserDataState extends Equatable {
  final FormzStatus status;
  final FullName fullName;
  final BirthDate birthDate;
  final GenderState gender;

  const UserDataState({
    this.status = FormzStatus.pure,
    this.fullName = const FullName.pure(),
    this.birthDate = const BirthDate.pure(),
    this.gender = const GenderState.pure(),
  });

  UserDataState copyWith({
    FormzStatus status,
    FullName fullName,
    BirthDate birthDate,
    GenderState gender,
  }) {
    return UserDataState(
      status: status ?? this.status,
      fullName: fullName ?? this.fullName,
      birthDate: birthDate ?? this.birthDate,
      gender: gender ?? this.gender,
    );
  }

  bool get isValid => status == FormzStatus.valid;

  @override
  List<Object> get props => [
        status,
        gender,
        fullName,
        birthDate,
      ];
}

class UserDataBLoC extends Bloc<UserDataEvent, UserDataState> {
  final UserBLoC _userBLoC;

  UserDataBLoC(this._userBLoC) : super(const UserDataState());

  @override
  Stream<UserDataState> mapEventToState(UserDataEvent event) =>
      event.when<Stream<UserDataState>>(
        fullNameChanged: _fullNameChanged,
        birthDateChanged: _birthDateChanged,
        genderChanged: _genderChanged,
        submit: _submit,
      );

  Stream<UserDataState> _fullNameChanged(String fullName) async* {
    final fullNameValidator = FullName.dirty(fullName);
    yield state.copyWith(
      fullName: fullNameValidator,
      status: Formz.validate([
        fullNameValidator,
        state.birthDate,
        state.gender,
      ]),
    );
  }

  Stream<UserDataState> _birthDateChanged(String date) async* {
    final birthDateValidator = BirthDate.dirty(date);
    yield state.copyWith(
      birthDate: birthDateValidator,
      status: Formz.validate([
        birthDateValidator,
        state.fullName,
        state.gender,
      ]),
    );
  }

  Stream<UserDataState> _genderChanged(Gender gender) async* {
    final genderValidator = GenderState.dirty(gender);
    yield state.copyWith(
      gender: genderValidator,
      status: Formz.validate([
        genderValidator,
        state.fullName,
        state.birthDate,
      ]),
    );
  }

  Stream<UserDataState> _submit() async* {
    final isValid = Formz.validate([
      state.fullName,
      state.birthDate,
      state.gender,
    ]);
    if (isValid == FormzStatus.valid) {
      final User user = User(
        fullName: state.fullName.value,
        birthDate: state.birthDate.value,
        gender: state.gender.value,
      );
      _userBLoC.add(UserEvent.create(user));
    }
  }
}
