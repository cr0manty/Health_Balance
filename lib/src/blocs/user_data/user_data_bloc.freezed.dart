// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserDataEventTearOff {
  const _$UserDataEventTearOff();

// ignore: unused_element
  FullNameChangedUserDataEvent fullNameChanged(String fullName) {
    return FullNameChangedUserDataEvent(
      fullName,
    );
  }

// ignore: unused_element
  BirthDateChangedUserDataEvent birthDateChanged(DateTime date) {
    return BirthDateChangedUserDataEvent(
      date,
    );
  }

// ignore: unused_element
  GenderChangedUserDataEvent genderChanged(Gender gender) {
    return GenderChangedUserDataEvent(
      gender,
    );
  }

// ignore: unused_element
  SubmitUserDataEvent submit() {
    return const SubmitUserDataEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $UserDataEvent = _$UserDataEventTearOff();

/// @nodoc
mixin _$UserDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fullNameChanged(String fullName),
    @required TResult birthDateChanged(DateTime date),
    @required TResult genderChanged(Gender gender),
    @required TResult submit(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fullNameChanged(String fullName),
    TResult birthDateChanged(DateTime date),
    TResult genderChanged(Gender gender),
    TResult submit(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fullNameChanged(FullNameChangedUserDataEvent value),
    @required TResult birthDateChanged(BirthDateChangedUserDataEvent value),
    @required TResult genderChanged(GenderChangedUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fullNameChanged(FullNameChangedUserDataEvent value),
    TResult birthDateChanged(BirthDateChangedUserDataEvent value),
    TResult genderChanged(GenderChangedUserDataEvent value),
    TResult submit(SubmitUserDataEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserDataEventCopyWith<$Res> {
  factory $UserDataEventCopyWith(
          UserDataEvent value, $Res Function(UserDataEvent) then) =
      _$UserDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDataEventCopyWithImpl<$Res>
    implements $UserDataEventCopyWith<$Res> {
  _$UserDataEventCopyWithImpl(this._value, this._then);

  final UserDataEvent _value;
  // ignore: unused_field
  final $Res Function(UserDataEvent) _then;
}

/// @nodoc
abstract class $FullNameChangedUserDataEventCopyWith<$Res> {
  factory $FullNameChangedUserDataEventCopyWith(
          FullNameChangedUserDataEvent value,
          $Res Function(FullNameChangedUserDataEvent) then) =
      _$FullNameChangedUserDataEventCopyWithImpl<$Res>;
  $Res call({String fullName});
}

/// @nodoc
class _$FullNameChangedUserDataEventCopyWithImpl<$Res>
    extends _$UserDataEventCopyWithImpl<$Res>
    implements $FullNameChangedUserDataEventCopyWith<$Res> {
  _$FullNameChangedUserDataEventCopyWithImpl(
      FullNameChangedUserDataEvent _value,
      $Res Function(FullNameChangedUserDataEvent) _then)
      : super(_value, (v) => _then(v as FullNameChangedUserDataEvent));

  @override
  FullNameChangedUserDataEvent get _value =>
      super._value as FullNameChangedUserDataEvent;

  @override
  $Res call({
    Object fullName = freezed,
  }) {
    return _then(FullNameChangedUserDataEvent(
      fullName == freezed ? _value.fullName : fullName as String,
    ));
  }
}

/// @nodoc
class _$FullNameChangedUserDataEvent extends FullNameChangedUserDataEvent {
  const _$FullNameChangedUserDataEvent(this.fullName)
      : assert(fullName != null),
        super._();

  @override
  final String fullName;

  @override
  String toString() {
    return 'UserDataEvent.fullNameChanged(fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FullNameChangedUserDataEvent &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fullName);

  @JsonKey(ignore: true)
  @override
  $FullNameChangedUserDataEventCopyWith<FullNameChangedUserDataEvent>
      get copyWith => _$FullNameChangedUserDataEventCopyWithImpl<
          FullNameChangedUserDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fullNameChanged(String fullName),
    @required TResult birthDateChanged(DateTime date),
    @required TResult genderChanged(Gender gender),
    @required TResult submit(),
  }) {
    assert(fullNameChanged != null);
    assert(birthDateChanged != null);
    assert(genderChanged != null);
    assert(submit != null);
    return fullNameChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fullNameChanged(String fullName),
    TResult birthDateChanged(DateTime date),
    TResult genderChanged(Gender gender),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fullNameChanged != null) {
      return fullNameChanged(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fullNameChanged(FullNameChangedUserDataEvent value),
    @required TResult birthDateChanged(BirthDateChangedUserDataEvent value),
    @required TResult genderChanged(GenderChangedUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  }) {
    assert(fullNameChanged != null);
    assert(birthDateChanged != null);
    assert(genderChanged != null);
    assert(submit != null);
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fullNameChanged(FullNameChangedUserDataEvent value),
    TResult birthDateChanged(BirthDateChangedUserDataEvent value),
    TResult genderChanged(GenderChangedUserDataEvent value),
    TResult submit(SubmitUserDataEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fullNameChanged != null) {
      return fullNameChanged(this);
    }
    return orElse();
  }
}

abstract class FullNameChangedUserDataEvent extends UserDataEvent {
  const FullNameChangedUserDataEvent._() : super._();
  const factory FullNameChangedUserDataEvent(String fullName) =
      _$FullNameChangedUserDataEvent;

  String get fullName;
  @JsonKey(ignore: true)
  $FullNameChangedUserDataEventCopyWith<FullNameChangedUserDataEvent>
      get copyWith;
}

/// @nodoc
abstract class $BirthDateChangedUserDataEventCopyWith<$Res> {
  factory $BirthDateChangedUserDataEventCopyWith(
          BirthDateChangedUserDataEvent value,
          $Res Function(BirthDateChangedUserDataEvent) then) =
      _$BirthDateChangedUserDataEventCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class _$BirthDateChangedUserDataEventCopyWithImpl<$Res>
    extends _$UserDataEventCopyWithImpl<$Res>
    implements $BirthDateChangedUserDataEventCopyWith<$Res> {
  _$BirthDateChangedUserDataEventCopyWithImpl(
      BirthDateChangedUserDataEvent _value,
      $Res Function(BirthDateChangedUserDataEvent) _then)
      : super(_value, (v) => _then(v as BirthDateChangedUserDataEvent));

  @override
  BirthDateChangedUserDataEvent get _value =>
      super._value as BirthDateChangedUserDataEvent;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(BirthDateChangedUserDataEvent(
      date == freezed ? _value.date : date as DateTime,
    ));
  }
}

/// @nodoc
class _$BirthDateChangedUserDataEvent extends BirthDateChangedUserDataEvent {
  const _$BirthDateChangedUserDataEvent(this.date)
      : assert(date != null),
        super._();

  @override
  final DateTime date;

  @override
  String toString() {
    return 'UserDataEvent.birthDateChanged(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BirthDateChangedUserDataEvent &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  $BirthDateChangedUserDataEventCopyWith<BirthDateChangedUserDataEvent>
      get copyWith => _$BirthDateChangedUserDataEventCopyWithImpl<
          BirthDateChangedUserDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fullNameChanged(String fullName),
    @required TResult birthDateChanged(DateTime date),
    @required TResult genderChanged(Gender gender),
    @required TResult submit(),
  }) {
    assert(fullNameChanged != null);
    assert(birthDateChanged != null);
    assert(genderChanged != null);
    assert(submit != null);
    return birthDateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fullNameChanged(String fullName),
    TResult birthDateChanged(DateTime date),
    TResult genderChanged(Gender gender),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (birthDateChanged != null) {
      return birthDateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fullNameChanged(FullNameChangedUserDataEvent value),
    @required TResult birthDateChanged(BirthDateChangedUserDataEvent value),
    @required TResult genderChanged(GenderChangedUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  }) {
    assert(fullNameChanged != null);
    assert(birthDateChanged != null);
    assert(genderChanged != null);
    assert(submit != null);
    return birthDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fullNameChanged(FullNameChangedUserDataEvent value),
    TResult birthDateChanged(BirthDateChangedUserDataEvent value),
    TResult genderChanged(GenderChangedUserDataEvent value),
    TResult submit(SubmitUserDataEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (birthDateChanged != null) {
      return birthDateChanged(this);
    }
    return orElse();
  }
}

abstract class BirthDateChangedUserDataEvent extends UserDataEvent {
  const BirthDateChangedUserDataEvent._() : super._();
  const factory BirthDateChangedUserDataEvent(DateTime date) =
      _$BirthDateChangedUserDataEvent;

  DateTime get date;
  @JsonKey(ignore: true)
  $BirthDateChangedUserDataEventCopyWith<BirthDateChangedUserDataEvent>
      get copyWith;
}

/// @nodoc
abstract class $GenderChangedUserDataEventCopyWith<$Res> {
  factory $GenderChangedUserDataEventCopyWith(GenderChangedUserDataEvent value,
          $Res Function(GenderChangedUserDataEvent) then) =
      _$GenderChangedUserDataEventCopyWithImpl<$Res>;
  $Res call({Gender gender});
}

/// @nodoc
class _$GenderChangedUserDataEventCopyWithImpl<$Res>
    extends _$UserDataEventCopyWithImpl<$Res>
    implements $GenderChangedUserDataEventCopyWith<$Res> {
  _$GenderChangedUserDataEventCopyWithImpl(GenderChangedUserDataEvent _value,
      $Res Function(GenderChangedUserDataEvent) _then)
      : super(_value, (v) => _then(v as GenderChangedUserDataEvent));

  @override
  GenderChangedUserDataEvent get _value =>
      super._value as GenderChangedUserDataEvent;

  @override
  $Res call({
    Object gender = freezed,
  }) {
    return _then(GenderChangedUserDataEvent(
      gender == freezed ? _value.gender : gender as Gender,
    ));
  }
}

/// @nodoc
class _$GenderChangedUserDataEvent extends GenderChangedUserDataEvent {
  const _$GenderChangedUserDataEvent(this.gender)
      : assert(gender != null),
        super._();

  @override
  final Gender gender;

  @override
  String toString() {
    return 'UserDataEvent.genderChanged(gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenderChangedUserDataEvent &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gender);

  @JsonKey(ignore: true)
  @override
  $GenderChangedUserDataEventCopyWith<GenderChangedUserDataEvent>
      get copyWith =>
          _$GenderChangedUserDataEventCopyWithImpl<GenderChangedUserDataEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fullNameChanged(String fullName),
    @required TResult birthDateChanged(DateTime date),
    @required TResult genderChanged(Gender gender),
    @required TResult submit(),
  }) {
    assert(fullNameChanged != null);
    assert(birthDateChanged != null);
    assert(genderChanged != null);
    assert(submit != null);
    return genderChanged(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fullNameChanged(String fullName),
    TResult birthDateChanged(DateTime date),
    TResult genderChanged(Gender gender),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (genderChanged != null) {
      return genderChanged(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fullNameChanged(FullNameChangedUserDataEvent value),
    @required TResult birthDateChanged(BirthDateChangedUserDataEvent value),
    @required TResult genderChanged(GenderChangedUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  }) {
    assert(fullNameChanged != null);
    assert(birthDateChanged != null);
    assert(genderChanged != null);
    assert(submit != null);
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fullNameChanged(FullNameChangedUserDataEvent value),
    TResult birthDateChanged(BirthDateChangedUserDataEvent value),
    TResult genderChanged(GenderChangedUserDataEvent value),
    TResult submit(SubmitUserDataEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class GenderChangedUserDataEvent extends UserDataEvent {
  const GenderChangedUserDataEvent._() : super._();
  const factory GenderChangedUserDataEvent(Gender gender) =
      _$GenderChangedUserDataEvent;

  Gender get gender;
  @JsonKey(ignore: true)
  $GenderChangedUserDataEventCopyWith<GenderChangedUserDataEvent> get copyWith;
}

/// @nodoc
abstract class $SubmitUserDataEventCopyWith<$Res> {
  factory $SubmitUserDataEventCopyWith(
          SubmitUserDataEvent value, $Res Function(SubmitUserDataEvent) then) =
      _$SubmitUserDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitUserDataEventCopyWithImpl<$Res>
    extends _$UserDataEventCopyWithImpl<$Res>
    implements $SubmitUserDataEventCopyWith<$Res> {
  _$SubmitUserDataEventCopyWithImpl(
      SubmitUserDataEvent _value, $Res Function(SubmitUserDataEvent) _then)
      : super(_value, (v) => _then(v as SubmitUserDataEvent));

  @override
  SubmitUserDataEvent get _value => super._value as SubmitUserDataEvent;
}

/// @nodoc
class _$SubmitUserDataEvent extends SubmitUserDataEvent {
  const _$SubmitUserDataEvent() : super._();

  @override
  String toString() {
    return 'UserDataEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitUserDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fullNameChanged(String fullName),
    @required TResult birthDateChanged(DateTime date),
    @required TResult genderChanged(Gender gender),
    @required TResult submit(),
  }) {
    assert(fullNameChanged != null);
    assert(birthDateChanged != null);
    assert(genderChanged != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fullNameChanged(String fullName),
    TResult birthDateChanged(DateTime date),
    TResult genderChanged(Gender gender),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fullNameChanged(FullNameChangedUserDataEvent value),
    @required TResult birthDateChanged(BirthDateChangedUserDataEvent value),
    @required TResult genderChanged(GenderChangedUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  }) {
    assert(fullNameChanged != null);
    assert(birthDateChanged != null);
    assert(genderChanged != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fullNameChanged(FullNameChangedUserDataEvent value),
    TResult birthDateChanged(BirthDateChangedUserDataEvent value),
    TResult genderChanged(GenderChangedUserDataEvent value),
    TResult submit(SubmitUserDataEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class SubmitUserDataEvent extends UserDataEvent {
  const SubmitUserDataEvent._() : super._();
  const factory SubmitUserDataEvent() = _$SubmitUserDataEvent;
}
