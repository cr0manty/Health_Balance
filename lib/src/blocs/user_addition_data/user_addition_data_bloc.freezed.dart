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
  WeightChangedUserDataEvent weightChanged(String weight) {
    return WeightChangedUserDataEvent(
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
  WaistCircumferenceChangedUserDataEvent waistCircumferenceChanged(
      String value) {
    return WaistCircumferenceChangedUserDataEvent(
      value,
    );
  }

// ignore: unused_element
  HipGirthChangedUserDataEvent hipGirthChanged(String value) {
    return HipGirthChangedUserDataEvent(
      value,
    );
  }

// ignore: unused_element
  LoadDataUserDataEvent loadData(UserData userData) {
    return LoadDataUserDataEvent(
      userData,
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
    @required TResult weightChanged(String weight),
    @required TResult heightChanged(String height),
    @required TResult waistCircumferenceChanged(String value),
    @required TResult hipGirthChanged(String value),
    @required TResult loadData(UserData userData),
    @required TResult submit(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult wristGirthChanged(String wristGirth),
    TResult weightChanged(String weight),
    TResult heightChanged(String height),
    TResult waistCircumferenceChanged(String value),
    TResult hipGirthChanged(String value),
    TResult loadData(UserData userData),
    TResult submit(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    @required TResult weightChanged(WeightChangedUserDataEvent value),
    @required TResult heightChanged(HeightChangedUserDataEvent value),
    @required
        TResult waistCircumferenceChanged(
            WaistCircumferenceChangedUserDataEvent value),
    @required TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    @required TResult loadData(LoadDataUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    TResult weightChanged(WeightChangedUserDataEvent value),
    TResult heightChanged(HeightChangedUserDataEvent value),
    TResult waistCircumferenceChanged(
        WaistCircumferenceChangedUserDataEvent value),
    TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    TResult loadData(LoadDataUserDataEvent value),
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
    @required TResult weightChanged(String weight),
    @required TResult heightChanged(String height),
    @required TResult waistCircumferenceChanged(String value),
    @required TResult hipGirthChanged(String value),
    @required TResult loadData(UserData userData),
    @required TResult submit(),
  }) {
    assert(wristGirthChanged != null);
    assert(weightChanged != null);
    assert(heightChanged != null);
    assert(waistCircumferenceChanged != null);
    assert(hipGirthChanged != null);
    assert(loadData != null);
    assert(submit != null);
    return wristGirthChanged(wristGirth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult wristGirthChanged(String wristGirth),
    TResult weightChanged(String weight),
    TResult heightChanged(String height),
    TResult waistCircumferenceChanged(String value),
    TResult hipGirthChanged(String value),
    TResult loadData(UserData userData),
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
    @required TResult weightChanged(WeightChangedUserDataEvent value),
    @required TResult heightChanged(HeightChangedUserDataEvent value),
    @required
        TResult waistCircumferenceChanged(
            WaistCircumferenceChangedUserDataEvent value),
    @required TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    @required TResult loadData(LoadDataUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  }) {
    assert(wristGirthChanged != null);
    assert(weightChanged != null);
    assert(heightChanged != null);
    assert(waistCircumferenceChanged != null);
    assert(hipGirthChanged != null);
    assert(loadData != null);
    assert(submit != null);
    return wristGirthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    TResult weightChanged(WeightChangedUserDataEvent value),
    TResult heightChanged(HeightChangedUserDataEvent value),
    TResult waistCircumferenceChanged(
        WaistCircumferenceChangedUserDataEvent value),
    TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    TResult loadData(LoadDataUserDataEvent value),
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
abstract class $WeightChangedUserDataEventCopyWith<$Res> {
  factory $WeightChangedUserDataEventCopyWith(WeightChangedUserDataEvent value,
          $Res Function(WeightChangedUserDataEvent) then) =
      _$WeightChangedUserDataEventCopyWithImpl<$Res>;
  $Res call({String weight});
}

/// @nodoc
class _$WeightChangedUserDataEventCopyWithImpl<$Res>
    extends _$UserAdditionDataEventCopyWithImpl<$Res>
    implements $WeightChangedUserDataEventCopyWith<$Res> {
  _$WeightChangedUserDataEventCopyWithImpl(WeightChangedUserDataEvent _value,
      $Res Function(WeightChangedUserDataEvent) _then)
      : super(_value, (v) => _then(v as WeightChangedUserDataEvent));

  @override
  WeightChangedUserDataEvent get _value =>
      super._value as WeightChangedUserDataEvent;

  @override
  $Res call({
    Object weight = freezed,
  }) {
    return _then(WeightChangedUserDataEvent(
      weight == freezed ? _value.weight : weight as String,
    ));
  }
}

/// @nodoc
class _$WeightChangedUserDataEvent extends WeightChangedUserDataEvent {
  const _$WeightChangedUserDataEvent(this.weight)
      : assert(weight != null),
        super._();

  @override
  final String weight;

  @override
  String toString() {
    return 'UserAdditionDataEvent.weightChanged(weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeightChangedUserDataEvent &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(weight);

  @JsonKey(ignore: true)
  @override
  $WeightChangedUserDataEventCopyWith<WeightChangedUserDataEvent>
      get copyWith =>
          _$WeightChangedUserDataEventCopyWithImpl<WeightChangedUserDataEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult wristGirthChanged(String wristGirth),
    @required TResult weightChanged(String weight),
    @required TResult heightChanged(String height),
    @required TResult waistCircumferenceChanged(String value),
    @required TResult hipGirthChanged(String value),
    @required TResult loadData(UserData userData),
    @required TResult submit(),
  }) {
    assert(wristGirthChanged != null);
    assert(weightChanged != null);
    assert(heightChanged != null);
    assert(waistCircumferenceChanged != null);
    assert(hipGirthChanged != null);
    assert(loadData != null);
    assert(submit != null);
    return weightChanged(weight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult wristGirthChanged(String wristGirth),
    TResult weightChanged(String weight),
    TResult heightChanged(String height),
    TResult waistCircumferenceChanged(String value),
    TResult hipGirthChanged(String value),
    TResult loadData(UserData userData),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (weightChanged != null) {
      return weightChanged(weight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    @required TResult weightChanged(WeightChangedUserDataEvent value),
    @required TResult heightChanged(HeightChangedUserDataEvent value),
    @required
        TResult waistCircumferenceChanged(
            WaistCircumferenceChangedUserDataEvent value),
    @required TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    @required TResult loadData(LoadDataUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  }) {
    assert(wristGirthChanged != null);
    assert(weightChanged != null);
    assert(heightChanged != null);
    assert(waistCircumferenceChanged != null);
    assert(hipGirthChanged != null);
    assert(loadData != null);
    assert(submit != null);
    return weightChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    TResult weightChanged(WeightChangedUserDataEvent value),
    TResult heightChanged(HeightChangedUserDataEvent value),
    TResult waistCircumferenceChanged(
        WaistCircumferenceChangedUserDataEvent value),
    TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    TResult loadData(LoadDataUserDataEvent value),
    TResult submit(SubmitUserDataEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (weightChanged != null) {
      return weightChanged(this);
    }
    return orElse();
  }
}

abstract class WeightChangedUserDataEvent extends UserAdditionDataEvent {
  const WeightChangedUserDataEvent._() : super._();
  const factory WeightChangedUserDataEvent(String weight) =
      _$WeightChangedUserDataEvent;

  String get weight;
  @JsonKey(ignore: true)
  $WeightChangedUserDataEventCopyWith<WeightChangedUserDataEvent> get copyWith;
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
    @required TResult weightChanged(String weight),
    @required TResult heightChanged(String height),
    @required TResult waistCircumferenceChanged(String value),
    @required TResult hipGirthChanged(String value),
    @required TResult loadData(UserData userData),
    @required TResult submit(),
  }) {
    assert(wristGirthChanged != null);
    assert(weightChanged != null);
    assert(heightChanged != null);
    assert(waistCircumferenceChanged != null);
    assert(hipGirthChanged != null);
    assert(loadData != null);
    assert(submit != null);
    return heightChanged(height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult wristGirthChanged(String wristGirth),
    TResult weightChanged(String weight),
    TResult heightChanged(String height),
    TResult waistCircumferenceChanged(String value),
    TResult hipGirthChanged(String value),
    TResult loadData(UserData userData),
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
    @required TResult weightChanged(WeightChangedUserDataEvent value),
    @required TResult heightChanged(HeightChangedUserDataEvent value),
    @required
        TResult waistCircumferenceChanged(
            WaistCircumferenceChangedUserDataEvent value),
    @required TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    @required TResult loadData(LoadDataUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  }) {
    assert(wristGirthChanged != null);
    assert(weightChanged != null);
    assert(heightChanged != null);
    assert(waistCircumferenceChanged != null);
    assert(hipGirthChanged != null);
    assert(loadData != null);
    assert(submit != null);
    return heightChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    TResult weightChanged(WeightChangedUserDataEvent value),
    TResult heightChanged(HeightChangedUserDataEvent value),
    TResult waistCircumferenceChanged(
        WaistCircumferenceChangedUserDataEvent value),
    TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    TResult loadData(LoadDataUserDataEvent value),
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
abstract class $WaistCircumferenceChangedUserDataEventCopyWith<$Res> {
  factory $WaistCircumferenceChangedUserDataEventCopyWith(
          WaistCircumferenceChangedUserDataEvent value,
          $Res Function(WaistCircumferenceChangedUserDataEvent) then) =
      _$WaistCircumferenceChangedUserDataEventCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$WaistCircumferenceChangedUserDataEventCopyWithImpl<$Res>
    extends _$UserAdditionDataEventCopyWithImpl<$Res>
    implements $WaistCircumferenceChangedUserDataEventCopyWith<$Res> {
  _$WaistCircumferenceChangedUserDataEventCopyWithImpl(
      WaistCircumferenceChangedUserDataEvent _value,
      $Res Function(WaistCircumferenceChangedUserDataEvent) _then)
      : super(
            _value, (v) => _then(v as WaistCircumferenceChangedUserDataEvent));

  @override
  WaistCircumferenceChangedUserDataEvent get _value =>
      super._value as WaistCircumferenceChangedUserDataEvent;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(WaistCircumferenceChangedUserDataEvent(
      value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$WaistCircumferenceChangedUserDataEvent
    extends WaistCircumferenceChangedUserDataEvent {
  const _$WaistCircumferenceChangedUserDataEvent(this.value)
      : assert(value != null),
        super._();

  @override
  final String value;

  @override
  String toString() {
    return 'UserAdditionDataEvent.waistCircumferenceChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WaistCircumferenceChangedUserDataEvent &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $WaistCircumferenceChangedUserDataEventCopyWith<
          WaistCircumferenceChangedUserDataEvent>
      get copyWith => _$WaistCircumferenceChangedUserDataEventCopyWithImpl<
          WaistCircumferenceChangedUserDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult wristGirthChanged(String wristGirth),
    @required TResult weightChanged(String weight),
    @required TResult heightChanged(String height),
    @required TResult waistCircumferenceChanged(String value),
    @required TResult hipGirthChanged(String value),
    @required TResult loadData(UserData userData),
    @required TResult submit(),
  }) {
    assert(wristGirthChanged != null);
    assert(weightChanged != null);
    assert(heightChanged != null);
    assert(waistCircumferenceChanged != null);
    assert(hipGirthChanged != null);
    assert(loadData != null);
    assert(submit != null);
    return waistCircumferenceChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult wristGirthChanged(String wristGirth),
    TResult weightChanged(String weight),
    TResult heightChanged(String height),
    TResult waistCircumferenceChanged(String value),
    TResult hipGirthChanged(String value),
    TResult loadData(UserData userData),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (waistCircumferenceChanged != null) {
      return waistCircumferenceChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    @required TResult weightChanged(WeightChangedUserDataEvent value),
    @required TResult heightChanged(HeightChangedUserDataEvent value),
    @required
        TResult waistCircumferenceChanged(
            WaistCircumferenceChangedUserDataEvent value),
    @required TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    @required TResult loadData(LoadDataUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  }) {
    assert(wristGirthChanged != null);
    assert(weightChanged != null);
    assert(heightChanged != null);
    assert(waistCircumferenceChanged != null);
    assert(hipGirthChanged != null);
    assert(loadData != null);
    assert(submit != null);
    return waistCircumferenceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    TResult weightChanged(WeightChangedUserDataEvent value),
    TResult heightChanged(HeightChangedUserDataEvent value),
    TResult waistCircumferenceChanged(
        WaistCircumferenceChangedUserDataEvent value),
    TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    TResult loadData(LoadDataUserDataEvent value),
    TResult submit(SubmitUserDataEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (waistCircumferenceChanged != null) {
      return waistCircumferenceChanged(this);
    }
    return orElse();
  }
}

abstract class WaistCircumferenceChangedUserDataEvent
    extends UserAdditionDataEvent {
  const WaistCircumferenceChangedUserDataEvent._() : super._();
  const factory WaistCircumferenceChangedUserDataEvent(String value) =
      _$WaistCircumferenceChangedUserDataEvent;

  String get value;
  @JsonKey(ignore: true)
  $WaistCircumferenceChangedUserDataEventCopyWith<
      WaistCircumferenceChangedUserDataEvent> get copyWith;
}

/// @nodoc
abstract class $HipGirthChangedUserDataEventCopyWith<$Res> {
  factory $HipGirthChangedUserDataEventCopyWith(
          HipGirthChangedUserDataEvent value,
          $Res Function(HipGirthChangedUserDataEvent) then) =
      _$HipGirthChangedUserDataEventCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$HipGirthChangedUserDataEventCopyWithImpl<$Res>
    extends _$UserAdditionDataEventCopyWithImpl<$Res>
    implements $HipGirthChangedUserDataEventCopyWith<$Res> {
  _$HipGirthChangedUserDataEventCopyWithImpl(
      HipGirthChangedUserDataEvent _value,
      $Res Function(HipGirthChangedUserDataEvent) _then)
      : super(_value, (v) => _then(v as HipGirthChangedUserDataEvent));

  @override
  HipGirthChangedUserDataEvent get _value =>
      super._value as HipGirthChangedUserDataEvent;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(HipGirthChangedUserDataEvent(
      value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$HipGirthChangedUserDataEvent extends HipGirthChangedUserDataEvent {
  const _$HipGirthChangedUserDataEvent(this.value)
      : assert(value != null),
        super._();

  @override
  final String value;

  @override
  String toString() {
    return 'UserAdditionDataEvent.hipGirthChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HipGirthChangedUserDataEvent &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $HipGirthChangedUserDataEventCopyWith<HipGirthChangedUserDataEvent>
      get copyWith => _$HipGirthChangedUserDataEventCopyWithImpl<
          HipGirthChangedUserDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult wristGirthChanged(String wristGirth),
    @required TResult weightChanged(String weight),
    @required TResult heightChanged(String height),
    @required TResult waistCircumferenceChanged(String value),
    @required TResult hipGirthChanged(String value),
    @required TResult loadData(UserData userData),
    @required TResult submit(),
  }) {
    assert(wristGirthChanged != null);
    assert(weightChanged != null);
    assert(heightChanged != null);
    assert(waistCircumferenceChanged != null);
    assert(hipGirthChanged != null);
    assert(loadData != null);
    assert(submit != null);
    return hipGirthChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult wristGirthChanged(String wristGirth),
    TResult weightChanged(String weight),
    TResult heightChanged(String height),
    TResult waistCircumferenceChanged(String value),
    TResult hipGirthChanged(String value),
    TResult loadData(UserData userData),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hipGirthChanged != null) {
      return hipGirthChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    @required TResult weightChanged(WeightChangedUserDataEvent value),
    @required TResult heightChanged(HeightChangedUserDataEvent value),
    @required
        TResult waistCircumferenceChanged(
            WaistCircumferenceChangedUserDataEvent value),
    @required TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    @required TResult loadData(LoadDataUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  }) {
    assert(wristGirthChanged != null);
    assert(weightChanged != null);
    assert(heightChanged != null);
    assert(waistCircumferenceChanged != null);
    assert(hipGirthChanged != null);
    assert(loadData != null);
    assert(submit != null);
    return hipGirthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    TResult weightChanged(WeightChangedUserDataEvent value),
    TResult heightChanged(HeightChangedUserDataEvent value),
    TResult waistCircumferenceChanged(
        WaistCircumferenceChangedUserDataEvent value),
    TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    TResult loadData(LoadDataUserDataEvent value),
    TResult submit(SubmitUserDataEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hipGirthChanged != null) {
      return hipGirthChanged(this);
    }
    return orElse();
  }
}

abstract class HipGirthChangedUserDataEvent extends UserAdditionDataEvent {
  const HipGirthChangedUserDataEvent._() : super._();
  const factory HipGirthChangedUserDataEvent(String value) =
      _$HipGirthChangedUserDataEvent;

  String get value;
  @JsonKey(ignore: true)
  $HipGirthChangedUserDataEventCopyWith<HipGirthChangedUserDataEvent>
      get copyWith;
}

/// @nodoc
abstract class $LoadDataUserDataEventCopyWith<$Res> {
  factory $LoadDataUserDataEventCopyWith(LoadDataUserDataEvent value,
          $Res Function(LoadDataUserDataEvent) then) =
      _$LoadDataUserDataEventCopyWithImpl<$Res>;
  $Res call({UserData userData});
}

/// @nodoc
class _$LoadDataUserDataEventCopyWithImpl<$Res>
    extends _$UserAdditionDataEventCopyWithImpl<$Res>
    implements $LoadDataUserDataEventCopyWith<$Res> {
  _$LoadDataUserDataEventCopyWithImpl(
      LoadDataUserDataEvent _value, $Res Function(LoadDataUserDataEvent) _then)
      : super(_value, (v) => _then(v as LoadDataUserDataEvent));

  @override
  LoadDataUserDataEvent get _value => super._value as LoadDataUserDataEvent;

  @override
  $Res call({
    Object userData = freezed,
  }) {
    return _then(LoadDataUserDataEvent(
      userData == freezed ? _value.userData : userData as UserData,
    ));
  }
}

/// @nodoc
class _$LoadDataUserDataEvent extends LoadDataUserDataEvent {
  const _$LoadDataUserDataEvent(this.userData)
      : assert(userData != null),
        super._();

  @override
  final UserData userData;

  @override
  String toString() {
    return 'UserAdditionDataEvent.loadData(userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadDataUserDataEvent &&
            (identical(other.userData, userData) ||
                const DeepCollectionEquality()
                    .equals(other.userData, userData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userData);

  @JsonKey(ignore: true)
  @override
  $LoadDataUserDataEventCopyWith<LoadDataUserDataEvent> get copyWith =>
      _$LoadDataUserDataEventCopyWithImpl<LoadDataUserDataEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult wristGirthChanged(String wristGirth),
    @required TResult weightChanged(String weight),
    @required TResult heightChanged(String height),
    @required TResult waistCircumferenceChanged(String value),
    @required TResult hipGirthChanged(String value),
    @required TResult loadData(UserData userData),
    @required TResult submit(),
  }) {
    assert(wristGirthChanged != null);
    assert(weightChanged != null);
    assert(heightChanged != null);
    assert(waistCircumferenceChanged != null);
    assert(hipGirthChanged != null);
    assert(loadData != null);
    assert(submit != null);
    return loadData(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult wristGirthChanged(String wristGirth),
    TResult weightChanged(String weight),
    TResult heightChanged(String height),
    TResult waistCircumferenceChanged(String value),
    TResult hipGirthChanged(String value),
    TResult loadData(UserData userData),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadData != null) {
      return loadData(userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    @required TResult weightChanged(WeightChangedUserDataEvent value),
    @required TResult heightChanged(HeightChangedUserDataEvent value),
    @required
        TResult waistCircumferenceChanged(
            WaistCircumferenceChangedUserDataEvent value),
    @required TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    @required TResult loadData(LoadDataUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  }) {
    assert(wristGirthChanged != null);
    assert(weightChanged != null);
    assert(heightChanged != null);
    assert(waistCircumferenceChanged != null);
    assert(hipGirthChanged != null);
    assert(loadData != null);
    assert(submit != null);
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    TResult weightChanged(WeightChangedUserDataEvent value),
    TResult heightChanged(HeightChangedUserDataEvent value),
    TResult waistCircumferenceChanged(
        WaistCircumferenceChangedUserDataEvent value),
    TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    TResult loadData(LoadDataUserDataEvent value),
    TResult submit(SubmitUserDataEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class LoadDataUserDataEvent extends UserAdditionDataEvent {
  const LoadDataUserDataEvent._() : super._();
  const factory LoadDataUserDataEvent(UserData userData) =
      _$LoadDataUserDataEvent;

  UserData get userData;
  @JsonKey(ignore: true)
  $LoadDataUserDataEventCopyWith<LoadDataUserDataEvent> get copyWith;
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
    @required TResult weightChanged(String weight),
    @required TResult heightChanged(String height),
    @required TResult waistCircumferenceChanged(String value),
    @required TResult hipGirthChanged(String value),
    @required TResult loadData(UserData userData),
    @required TResult submit(),
  }) {
    assert(wristGirthChanged != null);
    assert(weightChanged != null);
    assert(heightChanged != null);
    assert(waistCircumferenceChanged != null);
    assert(hipGirthChanged != null);
    assert(loadData != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult wristGirthChanged(String wristGirth),
    TResult weightChanged(String weight),
    TResult heightChanged(String height),
    TResult waistCircumferenceChanged(String value),
    TResult hipGirthChanged(String value),
    TResult loadData(UserData userData),
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
    @required TResult weightChanged(WeightChangedUserDataEvent value),
    @required TResult heightChanged(HeightChangedUserDataEvent value),
    @required
        TResult waistCircumferenceChanged(
            WaistCircumferenceChangedUserDataEvent value),
    @required TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    @required TResult loadData(LoadDataUserDataEvent value),
    @required TResult submit(SubmitUserDataEvent value),
  }) {
    assert(wristGirthChanged != null);
    assert(weightChanged != null);
    assert(heightChanged != null);
    assert(waistCircumferenceChanged != null);
    assert(hipGirthChanged != null);
    assert(loadData != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult wristGirthChanged(WristGirthChangedUserDataEvent value),
    TResult weightChanged(WeightChangedUserDataEvent value),
    TResult heightChanged(HeightChangedUserDataEvent value),
    TResult waistCircumferenceChanged(
        WaistCircumferenceChangedUserDataEvent value),
    TResult hipGirthChanged(HipGirthChangedUserDataEvent value),
    TResult loadData(LoadDataUserDataEvent value),
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
