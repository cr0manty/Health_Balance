import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:health_balance/src/blocs/user/user_bloc.dart';
import 'package:health_balance/src/formz/user_data/height.dart';
import 'package:health_balance/src/formz/user_data/weight.dart';
import 'package:health_balance/src/formz/user_data/wrist_girth.dart';
import 'package:health_balance/src/models/user/user_data.dart';

part 'user_addition_data_bloc.freezed.dart';

@freezed
abstract class UserAdditionDataEvent with _$UserAdditionDataEvent {
  const UserAdditionDataEvent._();

  const factory UserAdditionDataEvent.wristGirthChanged(String wristGirth) =
      WristGirthChangedUserDataEvent;

  const factory UserAdditionDataEvent.weightChanged(String weight) =
      WeightChangedUserDataEvent;

  const factory UserAdditionDataEvent.heightChanged(String height) =
      HeightChangedUserDataEvent;

  const factory UserAdditionDataEvent.loadData(UserData userData) =
      LoadDataUserDataEvent;

  const factory UserAdditionDataEvent.submit() = SubmitUserDataEvent;
}

class UserAdditionDataState extends Equatable {
  final FormzStatus status;
  final Height height;
  final Weight weight;
  final WristGirth wristGirth;
  final bool isEdited;

  const UserAdditionDataState({
    this.status = FormzStatus.pure,
    this.height = const Height.pure(),
    this.weight = const Weight.pure(),
    this.wristGirth = const WristGirth.pure(),
    this.isEdited = false,
  });

  UserAdditionDataState copyWith({
    FormzStatus status,
    Height height,
    Weight weight,
    WristGirth wristGirth,
    bool isEdited,
  }) {
    return UserAdditionDataState(
      status: status ?? this.status,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      wristGirth: wristGirth ?? this.wristGirth,
      isEdited: isEdited ?? this.isEdited,
    );
  }

  bool get isValid => status == FormzStatus.valid;

  @override
  List<Object> get props => [
        status,
        weight,
        height,
        wristGirth,
      ];
}

class UserAdditionDataBLoC
    extends Bloc<UserAdditionDataEvent, UserAdditionDataState> {
  final UserBLoC _userBLoC;

  UserAdditionDataBLoC(this._userBLoC) : super(const UserAdditionDataState());

  @override
  Stream<UserAdditionDataState> mapEventToState(UserAdditionDataEvent event) =>
      event.when<Stream<UserAdditionDataState>>(
        wristGirthChanged: _wristGirthChanged,
        weightChanged: _weightChanged,
        heightChanged: _heightChanged,
        loadData: _loadData,
        submit: _submit,
      );

  Stream<UserAdditionDataState> _wristGirthChanged(String wristGirth) async* {
    final wristGirthValidator = WristGirth.dirty(wristGirth);
    yield state.copyWith(
      wristGirth: wristGirthValidator,
      status: Formz.validate([
        wristGirthValidator,
        state.height,
        state.weight,
      ]),
    );
  }

  Stream<UserAdditionDataState> _loadData(UserData userData) async* {
    yield state.copyWith(
      wristGirth: WristGirth.dirty(userData.wristGirth.toString()),
      weight: Weight.dirty(userData.weight.toString()),
      height: Height.dirty(userData.height.toString()),
    );
  }

  Stream<UserAdditionDataState> _weightChanged(String weight) async* {
    final weightValidator = Weight.dirty(weight);
    yield state.copyWith(
      weight: weightValidator,
      status: Formz.validate([
        weightValidator,
        state.height,
        state.wristGirth,
      ]),
    );
  }

  Stream<UserAdditionDataState> _heightChanged(String height) async* {
    final heightValidator = Height.dirty(height);
    yield state.copyWith(
      height: heightValidator,
      status: Formz.validate([
        heightValidator,
        state.weight,
        state.wristGirth,
      ]),
    );
  }

  Stream<UserAdditionDataState> _submit() async* {
    final isValid = Formz.validate([
      state.height,
      state.weight,
      state.wristGirth,
    ]);
    if (isValid == FormzStatus.valid) {
      final UserData userData = UserData(
        wristGirth: state.wristGirth.doubleValue,
        height: state.height.doubleValue,
        weight: state.weight.doubleValue,
      );

      _userBLoC.add(UserEvent.update(userData));
    }
  }
}
