// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

// ignore: unused_element
  CreateUserEvent create(User user) {
    return CreateUserEvent(
      user,
    );
  }

// ignore: unused_element
  ReadUserEvent read() {
    return const ReadUserEvent();
  }

// ignore: unused_element
  UpdateUserEvent update(UserData userData) {
    return UpdateUserEvent(
      userData,
    );
  }

// ignore: unused_element
  DeleteUserEvent delete() {
    return const DeleteUserEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult create(User user),
    @required TResult read(),
    @required TResult update(UserData userData),
    @required TResult delete(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult create(User user),
    TResult read(),
    TResult update(UserData userData),
    TResult delete(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult create(CreateUserEvent value),
    @required TResult read(ReadUserEvent value),
    @required TResult update(UpdateUserEvent value),
    @required TResult delete(DeleteUserEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult create(CreateUserEvent value),
    TResult read(ReadUserEvent value),
    TResult update(UpdateUserEvent value),
    TResult delete(DeleteUserEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class $CreateUserEventCopyWith<$Res> {
  factory $CreateUserEventCopyWith(
          CreateUserEvent value, $Res Function(CreateUserEvent) then) =
      _$CreateUserEventCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$CreateUserEventCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $CreateUserEventCopyWith<$Res> {
  _$CreateUserEventCopyWithImpl(
      CreateUserEvent _value, $Res Function(CreateUserEvent) _then)
      : super(_value, (v) => _then(v as CreateUserEvent));

  @override
  CreateUserEvent get _value => super._value as CreateUserEvent;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(CreateUserEvent(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$CreateUserEvent extends CreateUserEvent {
  const _$CreateUserEvent(this.user)
      : assert(user != null),
        super._();

  @override
  final User user;

  @override
  String toString() {
    return 'UserEvent.create(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateUserEvent &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $CreateUserEventCopyWith<CreateUserEvent> get copyWith =>
      _$CreateUserEventCopyWithImpl<CreateUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult create(User user),
    @required TResult read(),
    @required TResult update(UserData userData),
    @required TResult delete(),
  }) {
    assert(create != null);
    assert(read != null);
    assert(update != null);
    assert(delete != null);
    return create(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult create(User user),
    TResult read(),
    TResult update(UserData userData),
    TResult delete(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (create != null) {
      return create(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult create(CreateUserEvent value),
    @required TResult read(ReadUserEvent value),
    @required TResult update(UpdateUserEvent value),
    @required TResult delete(DeleteUserEvent value),
  }) {
    assert(create != null);
    assert(read != null);
    assert(update != null);
    assert(delete != null);
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult create(CreateUserEvent value),
    TResult read(ReadUserEvent value),
    TResult update(UpdateUserEvent value),
    TResult delete(DeleteUserEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CreateUserEvent extends UserEvent {
  const CreateUserEvent._() : super._();
  const factory CreateUserEvent(User user) = _$CreateUserEvent;

  User get user;
  @JsonKey(ignore: true)
  $CreateUserEventCopyWith<CreateUserEvent> get copyWith;
}

/// @nodoc
abstract class $ReadUserEventCopyWith<$Res> {
  factory $ReadUserEventCopyWith(
          ReadUserEvent value, $Res Function(ReadUserEvent) then) =
      _$ReadUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReadUserEventCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $ReadUserEventCopyWith<$Res> {
  _$ReadUserEventCopyWithImpl(
      ReadUserEvent _value, $Res Function(ReadUserEvent) _then)
      : super(_value, (v) => _then(v as ReadUserEvent));

  @override
  ReadUserEvent get _value => super._value as ReadUserEvent;
}

/// @nodoc
class _$ReadUserEvent extends ReadUserEvent {
  const _$ReadUserEvent() : super._();

  @override
  String toString() {
    return 'UserEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReadUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult create(User user),
    @required TResult read(),
    @required TResult update(UserData userData),
    @required TResult delete(),
  }) {
    assert(create != null);
    assert(read != null);
    assert(update != null);
    assert(delete != null);
    return read();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult create(User user),
    TResult read(),
    TResult update(UserData userData),
    TResult delete(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult create(CreateUserEvent value),
    @required TResult read(ReadUserEvent value),
    @required TResult update(UpdateUserEvent value),
    @required TResult delete(DeleteUserEvent value),
  }) {
    assert(create != null);
    assert(read != null);
    assert(update != null);
    assert(delete != null);
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult create(CreateUserEvent value),
    TResult read(ReadUserEvent value),
    TResult update(UpdateUserEvent value),
    TResult delete(DeleteUserEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadUserEvent extends UserEvent {
  const ReadUserEvent._() : super._();
  const factory ReadUserEvent() = _$ReadUserEvent;
}

/// @nodoc
abstract class $UpdateUserEventCopyWith<$Res> {
  factory $UpdateUserEventCopyWith(
          UpdateUserEvent value, $Res Function(UpdateUserEvent) then) =
      _$UpdateUserEventCopyWithImpl<$Res>;
  $Res call({UserData userData});
}

/// @nodoc
class _$UpdateUserEventCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UpdateUserEventCopyWith<$Res> {
  _$UpdateUserEventCopyWithImpl(
      UpdateUserEvent _value, $Res Function(UpdateUserEvent) _then)
      : super(_value, (v) => _then(v as UpdateUserEvent));

  @override
  UpdateUserEvent get _value => super._value as UpdateUserEvent;

  @override
  $Res call({
    Object userData = freezed,
  }) {
    return _then(UpdateUserEvent(
      userData == freezed ? _value.userData : userData as UserData,
    ));
  }
}

/// @nodoc
class _$UpdateUserEvent extends UpdateUserEvent {
  const _$UpdateUserEvent(this.userData)
      : assert(userData != null),
        super._();

  @override
  final UserData userData;

  @override
  String toString() {
    return 'UserEvent.update(userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUserEvent &&
            (identical(other.userData, userData) ||
                const DeepCollectionEquality()
                    .equals(other.userData, userData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userData);

  @JsonKey(ignore: true)
  @override
  $UpdateUserEventCopyWith<UpdateUserEvent> get copyWith =>
      _$UpdateUserEventCopyWithImpl<UpdateUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult create(User user),
    @required TResult read(),
    @required TResult update(UserData userData),
    @required TResult delete(),
  }) {
    assert(create != null);
    assert(read != null);
    assert(update != null);
    assert(delete != null);
    return update(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult create(User user),
    TResult read(),
    TResult update(UserData userData),
    TResult delete(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult create(CreateUserEvent value),
    @required TResult read(ReadUserEvent value),
    @required TResult update(UpdateUserEvent value),
    @required TResult delete(DeleteUserEvent value),
  }) {
    assert(create != null);
    assert(read != null);
    assert(update != null);
    assert(delete != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult create(CreateUserEvent value),
    TResult read(ReadUserEvent value),
    TResult update(UpdateUserEvent value),
    TResult delete(DeleteUserEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateUserEvent extends UserEvent {
  const UpdateUserEvent._() : super._();
  const factory UpdateUserEvent(UserData userData) = _$UpdateUserEvent;

  UserData get userData;
  @JsonKey(ignore: true)
  $UpdateUserEventCopyWith<UpdateUserEvent> get copyWith;
}

/// @nodoc
abstract class $DeleteUserEventCopyWith<$Res> {
  factory $DeleteUserEventCopyWith(
          DeleteUserEvent value, $Res Function(DeleteUserEvent) then) =
      _$DeleteUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteUserEventCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $DeleteUserEventCopyWith<$Res> {
  _$DeleteUserEventCopyWithImpl(
      DeleteUserEvent _value, $Res Function(DeleteUserEvent) _then)
      : super(_value, (v) => _then(v as DeleteUserEvent));

  @override
  DeleteUserEvent get _value => super._value as DeleteUserEvent;
}

/// @nodoc
class _$DeleteUserEvent extends DeleteUserEvent {
  const _$DeleteUserEvent() : super._();

  @override
  String toString() {
    return 'UserEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult create(User user),
    @required TResult read(),
    @required TResult update(UserData userData),
    @required TResult delete(),
  }) {
    assert(create != null);
    assert(read != null);
    assert(update != null);
    assert(delete != null);
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult create(User user),
    TResult read(),
    TResult update(UserData userData),
    TResult delete(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult create(CreateUserEvent value),
    @required TResult read(ReadUserEvent value),
    @required TResult update(UpdateUserEvent value),
    @required TResult delete(DeleteUserEvent value),
  }) {
    assert(create != null);
    assert(read != null);
    assert(update != null);
    assert(delete != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult create(CreateUserEvent value),
    TResult read(ReadUserEvent value),
    TResult update(UpdateUserEvent value),
    TResult delete(DeleteUserEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteUserEvent extends UserEvent {
  const DeleteUserEvent._() : super._();
  const factory DeleteUserEvent() = _$DeleteUserEvent;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

// ignore: unused_element
  InitialUserState initial() {
    return const InitialUserState();
  }

// ignore: unused_element
  EmptyUserState empty() {
    return const EmptyUserState();
  }

// ignore: unused_element
  ExistUserState exist(User user) {
    return ExistUserState(
      user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult empty(),
    @required TResult exist(User user),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult empty(),
    TResult exist(User user),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialUserState value),
    @required TResult empty(EmptyUserState value),
    @required TResult exist(ExistUserState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialUserState value),
    TResult empty(EmptyUserState value),
    TResult exist(ExistUserState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class $InitialUserStateCopyWith<$Res> {
  factory $InitialUserStateCopyWith(
          InitialUserState value, $Res Function(InitialUserState) then) =
      _$InitialUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialUserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $InitialUserStateCopyWith<$Res> {
  _$InitialUserStateCopyWithImpl(
      InitialUserState _value, $Res Function(InitialUserState) _then)
      : super(_value, (v) => _then(v as InitialUserState));

  @override
  InitialUserState get _value => super._value as InitialUserState;
}

/// @nodoc
class _$InitialUserState extends InitialUserState {
  const _$InitialUserState() : super._();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult empty(),
    @required TResult exist(User user),
  }) {
    assert(initial != null);
    assert(empty != null);
    assert(exist != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult empty(),
    TResult exist(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialUserState value),
    @required TResult empty(EmptyUserState value),
    @required TResult exist(ExistUserState value),
  }) {
    assert(initial != null);
    assert(empty != null);
    assert(exist != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialUserState value),
    TResult empty(EmptyUserState value),
    TResult exist(ExistUserState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialUserState extends UserState {
  const InitialUserState._() : super._();
  const factory InitialUserState() = _$InitialUserState;
}

/// @nodoc
abstract class $EmptyUserStateCopyWith<$Res> {
  factory $EmptyUserStateCopyWith(
          EmptyUserState value, $Res Function(EmptyUserState) then) =
      _$EmptyUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyUserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $EmptyUserStateCopyWith<$Res> {
  _$EmptyUserStateCopyWithImpl(
      EmptyUserState _value, $Res Function(EmptyUserState) _then)
      : super(_value, (v) => _then(v as EmptyUserState));

  @override
  EmptyUserState get _value => super._value as EmptyUserState;
}

/// @nodoc
class _$EmptyUserState extends EmptyUserState {
  const _$EmptyUserState() : super._();

  @override
  String toString() {
    return 'UserState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult empty(),
    @required TResult exist(User user),
  }) {
    assert(initial != null);
    assert(empty != null);
    assert(exist != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult empty(),
    TResult exist(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialUserState value),
    @required TResult empty(EmptyUserState value),
    @required TResult exist(ExistUserState value),
  }) {
    assert(initial != null);
    assert(empty != null);
    assert(exist != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialUserState value),
    TResult empty(EmptyUserState value),
    TResult exist(ExistUserState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyUserState extends UserState {
  const EmptyUserState._() : super._();
  const factory EmptyUserState() = _$EmptyUserState;
}

/// @nodoc
abstract class $ExistUserStateCopyWith<$Res> {
  factory $ExistUserStateCopyWith(
          ExistUserState value, $Res Function(ExistUserState) then) =
      _$ExistUserStateCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$ExistUserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $ExistUserStateCopyWith<$Res> {
  _$ExistUserStateCopyWithImpl(
      ExistUserState _value, $Res Function(ExistUserState) _then)
      : super(_value, (v) => _then(v as ExistUserState));

  @override
  ExistUserState get _value => super._value as ExistUserState;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(ExistUserState(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$ExistUserState extends ExistUserState {
  const _$ExistUserState(this.user)
      : assert(user != null),
        super._();

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.exist(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExistUserState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $ExistUserStateCopyWith<ExistUserState> get copyWith =>
      _$ExistUserStateCopyWithImpl<ExistUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult empty(),
    @required TResult exist(User user),
  }) {
    assert(initial != null);
    assert(empty != null);
    assert(exist != null);
    return exist(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult empty(),
    TResult exist(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exist != null) {
      return exist(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialUserState value),
    @required TResult empty(EmptyUserState value),
    @required TResult exist(ExistUserState value),
  }) {
    assert(initial != null);
    assert(empty != null);
    assert(exist != null);
    return exist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialUserState value),
    TResult empty(EmptyUserState value),
    TResult exist(ExistUserState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exist != null) {
      return exist(this);
    }
    return orElse();
  }
}

abstract class ExistUserState extends UserState {
  const ExistUserState._() : super._();
  const factory ExistUserState(User user) = _$ExistUserState;

  User get user;
  @JsonKey(ignore: true)
  $ExistUserStateCopyWith<ExistUserState> get copyWith;
}
