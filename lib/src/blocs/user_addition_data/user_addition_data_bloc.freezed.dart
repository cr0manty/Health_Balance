// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_addition_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserAdditionDataEventTearOff {
  const _$UserAdditionDataEventTearOff();

// ignore: unused_element
  WristGirthChangedUserDataEvent wristGirthChanged(String wristGirth) {
    return WristGirthChangedUserDataEvent(
      wristGirth,
    );
  }

// ignore: unused_element
  WeightDateChangedUserDataEvent weightDateChanged(String weight) {
    return WeightDateChangedUserDataEvent(
      weight,
    );
  }

// ignore: unused_element
  HeightChangedUserDataEvent heightChanged(String height) {
    return HeightChangedUserDataEvent(
      height,
    );
  }

// ignore: unused_element
  SubmitUserDataEvent submit() {
    return const SubmitUserDataEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $UserAdditionDataEvent = _$UserAdditionDataEventTearOff();

/// @nodoc
mixin _$UserAdditionDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult wristGirthChanged(String wristGirth),
    @required TResult weightDateChanged(String weight),
    @required TResult heightChanged(String height),
    @required TResult submit(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult wristGirthChanged(String wristGirth),
    TResult weightDateChanged(String weight),
    TResult heightChanged(String height),
    TResult submit(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    @required TResult weightDateChanged(WeightDateChangedUserDataEvent value),
    @required TResult heightChanged(HeightChangedUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    TResult weightDateChanged(WeightDateChangedUserDataEvent value),
    TResult heightChanged(HeightChangedUserDataEvent value),
    TResult submit(SubmitUserDataEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserAdditionDataEventCopyWith<$Res> {
  factory $UserAdditionDataEventCopyWith(UserAdditionDataEvent value,
          $Res Function(UserAdditionDataEvent) then) =
      _$UserAdditionDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserAdditionDataEventCopyWithImpl<$Res>
    implements $UserAdditionDataEventCopyWith<$Res> {
  _$UserAdditionDataEventCopyWithImpl(this._value, this._then);

  final UserAdditionDataEvent _value;
  // ignore: unused_field
  final $Res Function(UserAdditionDataEvent) _then;
}

/// @nodoc
abstract class $WristGirthChangedUserDataEventCopyWith<$Res> {
  factory $WristGirthChangedUserDataEventCopyWith(
          WristGirthChangedUserDataEvent value,
          $Res Function(WristGirthChangedUserDataEvent) then) =
      _$WristGirthChangedUserDataEventCopyWithImpl<$Res>;
  $Res call({String wristGirth});
}

/// @nodoc
class _$WristGirthChangedUserDataEventCopyWithImpl<$Res>
    extends _$UserAdditionDataEventCopyWithImpl<$Res>
    implements $WristGirthChangedUserDataEventCopyWith<$Res> {
  _$WristGirthChangedUserDataEventCopyWithImpl(
      WristGirthChangedUserDataEvent _value,
      $Res Function(WristGirthChangedUserDataEvent) _then)
      : super(_value, (v) => _then(v as WristGirthChangedUserDataEvent));

  @override
  WristGirthChangedUserDataEvent get _value =>
      super._value as WristGirthChangedUserDataEvent;

  @override
  $Res call({
    Object wristGirth = freezed,
  }) {
    return _then(WristGirthChangedUserDataEvent(
      wristGirth == freezed ? _value.wristGirth : wristGirth as String,
    ));
  }
}

/// @nodoc
class _$WristGirthChangedUserDataEvent extends WristGirthChangedUserDataEvent {
  const _$WristGirthChangedUserDataEvent(this.wristGirth)
      : assert(wristGirth != null),
        super._();

  @override
  final String wristGirth;

  @override
  String toString() {
    return 'UserAdditionDataEvent.wristGirthChanged(wristGirth: $wristGirth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WristGirthChangedUserDataEvent &&
            (identical(other.wristGirth, wristGirth) ||
                const DeepCollectionEquality()
                    .equals(other.wristGirth, wristGirth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(wristGirth);

  @JsonKey(ignore: true)
  @override
  $WristGirthChangedUserDataEventCopyWith<WristGirthChangedUserDataEvent>
      get copyWith => _$WristGirthChangedUserDataEventCopyWithImpl<
          WristGirthChangedUserDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult wristGirthChanged(String wristGirth),
    @required TResult weightDateChanged(String weight),
    @required TResult heightChanged(String height),
    @required TResult submit(),
  }) {
    assert(wristGirthChanged != null);
    assert(weightDateChanged != null);
    assert(heightChanged != null);
    assert(submit != null);
    return wristGirthChanged(wristGirth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult wristGirthChanged(String wristGirth),
    TResult weightDateChanged(String weight),
    TResult heightChanged(String height),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wristGirthChanged != null) {
      return wristGirthChanged(wristGirth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    @required TResult weightDateChanged(WeightDateChangedUserDataEvent value),
    @required TResult heightChanged(HeightChangedUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  }) {
    assert(wristGirthChanged != null);
    assert(weightDateChanged != null);
    assert(heightChanged != null);
    assert(submit != null);
    return wristGirthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    TResult weightDateChanged(WeightDateChangedUserDataEvent value),
    TResult heightChanged(HeightChangedUserDataEvent value),
    TResult submit(SubmitUserDataEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wristGirthChanged != null) {
      return wristGirthChanged(this);
    }
    return orElse();
  }
}

abstract class WristGirthChangedUserDataEvent extends UserAdditionDataEvent {
  const WristGirthChangedUserDataEvent._() : super._();
  const factory WristGirthChangedUserDataEvent(String wristGirth) =
      _$WristGirthChangedUserDataEvent;

  String get wristGirth;
  @JsonKey(ignore: true)
  $WristGirthChangedUserDataEventCopyWith<WristGirthChangedUserDataEvent>
      get copyWith;
}

/// @nodoc
abstract class $WeightDateChangedUserDataEventCopyWith<$Res> {
  factory $WeightDateChangedUserDataEventCopyWith(
          WeightDateChangedUserDataEvent value,
          $Res Function(WeightDateChangedUserDataEvent) then) =
      _$WeightDateChangedUserDataEventCopyWithImpl<$Res>;
  $Res call({String weight});
}

/// @nodoc
class _$WeightDateChangedUserDataEventCopyWithImpl<$Res>
    extends _$UserAdditionDataEventCopyWithImpl<$Res>
    implements $WeightDateChangedUserDataEventCopyWith<$Res> {
  _$WeightDateChangedUserDataEventCopyWithImpl(
      WeightDateChangedUserDataEvent _value,
      $Res Function(WeightDateChangedUserDataEvent) _then)
      : super(_value, (v) => _then(v as WeightDateChangedUserDataEvent));

  @override
  WeightDateChangedUserDataEvent get _value =>
      super._value as WeightDateChangedUserDataEvent;

  @override
  $Res call({
    Object weight = freezed,
  }) {
    return _then(WeightDateChangedUserDataEvent(
      weight == freezed ? _value.weight : weight as String,
    ));
  }
}

/// @nodoc
class _$WeightDateChangedUserDataEvent extends WeightDateChangedUserDataEvent {
  const _$WeightDateChangedUserDataEvent(this.weight)
      : assert(weight != null),
        super._();

  @override
  final String weight;

  @override
  String toString() {
    return 'UserAdditionDataEvent.weightDateChanged(weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeightDateChangedUserDataEvent &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(weight);

  @JsonKey(ignore: true)
  @override
  $WeightDateChangedUserDataEventCopyWith<WeightDateChangedUserDataEvent>
      get copyWith => _$WeightDateChangedUserDataEventCopyWithImpl<
          WeightDateChangedUserDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult wristGirthChanged(String wristGirth),
    @required TResult weightDateChanged(String weight),
    @required TResult heightChanged(String height),
    @required TResult submit(),
  }) {
    assert(wristGirthChanged != null);
    assert(weightDateChanged != null);
    assert(heightChanged != null);
    assert(submit != null);
    return weightDateChanged(weight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult wristGirthChanged(String wristGirth),
    TResult weightDateChanged(String weight),
    TResult heightChanged(String height),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (weightDateChanged != null) {
      return weightDateChanged(weight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    @required TResult weightDateChanged(WeightDateChangedUserDataEvent value),
    @required TResult heightChanged(HeightChangedUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  }) {
    assert(wristGirthChanged != null);
    assert(weightDateChanged != null);
    assert(heightChanged != null);
    assert(submit != null);
    return weightDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    TResult weightDateChanged(WeightDateChangedUserDataEvent value),
    TResult heightChanged(HeightChangedUserDataEvent value),
    TResult submit(SubmitUserDataEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (weightDateChanged != null) {
      return weightDateChanged(this);
    }
    return orElse();
  }
}

abstract class WeightDateChangedUserDataEvent extends UserAdditionDataEvent {
  const WeightDateChangedUserDataEvent._() : super._();
  const factory WeightDateChangedUserDataEvent(String weight) =
      _$WeightDateChangedUserDataEvent;

  String get weight;
  @JsonKey(ignore: true)
  $WeightDateChangedUserDataEventCopyWith<WeightDateChangedUserDataEvent>
      get copyWith;
}

/// @nodoc
abstract class $HeightChangedUserDataEventCopyWith<$Res> {
  factory $HeightChangedUserDataEventCopyWith(HeightChangedUserDataEvent value,
          $Res Function(HeightChangedUserDataEvent) then) =
      _$HeightChangedUserDataEventCopyWithImpl<$Res>;
  $Res call({String height});
}

/// @nodoc
class _$HeightChangedUserDataEventCopyWithImpl<$Res>
    extends _$UserAdditionDataEventCopyWithImpl<$Res>
    implements $HeightChangedUserDataEventCopyWith<$Res> {
  _$HeightChangedUserDataEventCopyWithImpl(HeightChangedUserDataEvent _value,
      $Res Function(HeightChangedUserDataEvent) _then)
      : super(_value, (v) => _then(v as HeightChangedUserDataEvent));

  @override
  HeightChangedUserDataEvent get _value =>
      super._value as HeightChangedUserDataEvent;

  @override
  $Res call({
    Object height = freezed,
  }) {
    return _then(HeightChangedUserDataEvent(
      height == freezed ? _value.height : height as String,
    ));
  }
}

/// @nodoc
class _$HeightChangedUserDataEvent extends HeightChangedUserDataEvent {
  const _$HeightChangedUserDataEvent(this.height)
      : assert(height != null),
        super._();

  @override
  final String height;

  @override
  String toString() {
    return 'UserAdditionDataEvent.heightChanged(height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HeightChangedUserDataEvent &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(height);

  @JsonKey(ignore: true)
  @override
  $HeightChangedUserDataEventCopyWith<HeightChangedUserDataEvent>
      get copyWith =>
          _$HeightChangedUserDataEventCopyWithImpl<HeightChangedUserDataEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult wristGirthChanged(String wristGirth),
    @required TResult weightDateChanged(String weight),
    @required TResult heightChanged(String height),
    @required TResult submit(),
  }) {
    assert(wristGirthChanged != null);
    assert(weightDateChanged != null);
    assert(heightChanged != null);
    assert(submit != null);
    return heightChanged(height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult wristGirthChanged(String wristGirth),
    TResult weightDateChanged(String weight),
    TResult heightChanged(String height),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (heightChanged != null) {
      return heightChanged(height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    @required TResult weightDateChanged(WeightDateChangedUserDataEvent value),
    @required TResult heightChanged(HeightChangedUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  }) {
    assert(wristGirthChanged != null);
    assert(weightDateChanged != null);
    assert(heightChanged != null);
    assert(submit != null);
    return heightChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    TResult weightDateChanged(WeightDateChangedUserDataEvent value),
    TResult heightChanged(HeightChangedUserDataEvent value),
    TResult submit(SubmitUserDataEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (heightChanged != null) {
      return heightChanged(this);
    }
    return orElse();
  }
}

abstract class HeightChangedUserDataEvent extends UserAdditionDataEvent {
  const HeightChangedUserDataEvent._() : super._();
  const factory HeightChangedUserDataEvent(String height) =
      _$HeightChangedUserDataEvent;

  String get height;
  @JsonKey(ignore: true)
  $HeightChangedUserDataEventCopyWith<HeightChangedUserDataEvent> get copyWith;
}

/// @nodoc
abstract class $SubmitUserDataEventCopyWith<$Res> {
  factory $SubmitUserDataEventCopyWith(
          SubmitUserDataEvent value, $Res Function(SubmitUserDataEvent) then) =
      _$SubmitUserDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitUserDataEventCopyWithImpl<$Res>
    extends _$UserAdditionDataEventCopyWithImpl<$Res>
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
    return 'UserAdditionDataEvent.submit()';
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
    @required TResult wristGirthChanged(String wristGirth),
    @required TResult weightDateChanged(String weight),
    @required TResult heightChanged(String height),
    @required TResult submit(),
  }) {
    assert(wristGirthChanged != null);
    assert(weightDateChanged != null);
    assert(heightChanged != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult wristGirthChanged(String wristGirth),
    TResult weightDateChanged(String weight),
    TResult heightChanged(String height),
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
    @required TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    @required TResult weightDateChanged(WeightDateChangedUserDataEvent value),
    @required TResult heightChanged(HeightChangedUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  }) {
    assert(wristGirthChanged != null);
    assert(weightDateChanged != null);
    assert(heightChanged != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    TResult weightDateChanged(WeightDateChangedUserDataEvent value),
    TResult heightChanged(HeightChangedUserDataEvent value),
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

abstract class SubmitUserDataEvent extends UserAdditionDataEvent {
  const SubmitUserDataEvent._() : super._();
  const factory SubmitUserDataEvent() = _$SubmitUserDataEvent;
}
