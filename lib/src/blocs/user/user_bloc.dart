import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:health_balance/src/models/user/user.dart';
import 'package:health_balance/src/models/user/user_data.dart';
import 'package:health_balance/src/repositories/user_repository.dart';

part 'user_bloc.freezed.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const UserEvent._();

  const factory UserEvent.create(User user) = CreateUserEvent;

  const factory UserEvent.read() = ReadUserEvent;

  const factory UserEvent.update(UserData userData) = UpdateUserEvent;

  const factory UserEvent.delete() = DeleteUserEvent;
}

@freezed
abstract class UserState with _$UserState {
  const UserState._();

  const factory UserState.initial() = InitialUserState;

  const factory UserState.empty() = EmptyUserState;

  const factory UserState.exist(User user) = ExistUserState;

  const factory UserState.existFull(User user) = ExistFullUserState;

  User get user => throw 'No user';
}

class UserBLoC extends Bloc<UserEvent, UserState> {
  final UserRepository _repository;

  UserBLoC(this._repository) : super(const InitialUserState());

  @override
  Stream<UserState> mapEventToState(UserEvent event) =>
      event.when<Stream<UserState>>(
        create: _create,
        read: _read,
        update: _update,
        delete: _delete,
      );

  Stream<UserState> _create(User user) async* {
    try {
      final isUserSet = await _repository.createUser(user).timeout(
            const Duration(seconds: 30),
          );

      if (isUserSet) {
        yield UserState.exist(user);
      } else {
        yield const UserState.empty();
      }
    } on TimeoutException {
      yield const UserState.empty();
    } on dynamic catch (_) {
      yield const UserState.empty();
      rethrow;
    }
  }

  Stream<UserState> _read() async* {
    try {
      final user = await _repository.getUser().timeout(
            const Duration(seconds: 30),
          );

      if (user == null) {
        yield const UserState.empty();
      } else if (user.hasData) {
        yield UserState.existFull(user);
      } else {
        yield UserState.exist(user);
      }
    } on TimeoutException {
      yield const UserState.empty();
    } on dynamic catch (_) {
      yield const UserState.empty();
      rethrow;
    }
  }

  Stream<UserState> _update(UserData userData) async* {
    try {
      final user = await _repository.updateUserData(userData).timeout(
            const Duration(seconds: 30),
          );

      if (user == null) {
        yield const UserState.empty();
      } else if (user.hasData) {
        yield UserState.existFull(user);
      } else {
        yield UserState.exist(user);
      }
    } on TimeoutException {
      yield const UserState.empty();
    } on dynamic catch (_) {
      yield const UserState.empty();
      rethrow;
    }
  }

  Stream<UserState> _delete() async* {
    try {
      await _repository.deleteUser();
    } on dynamic catch (_) {
      rethrow;
    }
    yield const UserState.empty();
  }
}
