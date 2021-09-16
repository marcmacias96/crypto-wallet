// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Input _$InputFromJson(Map<String, dynamic> json) {
  return _Input.fromJson(json);
}

/// @nodoc
class _$InputTearOff {
  const _$InputTearOff();

  _Input call(
      {Prevout? prevout,
      String? script,
      String? witness,
      int? sequence,
      Coin? coin}) {
    return _Input(
      prevout: prevout,
      script: script,
      witness: witness,
      sequence: sequence,
      coin: coin,
    );
  }

  Input fromJson(Map<String, Object> json) {
    return Input.fromJson(json);
  }
}

/// @nodoc
const $Input = _$InputTearOff();

/// @nodoc
mixin _$Input {
  Prevout? get prevout => throw _privateConstructorUsedError;
  String? get script => throw _privateConstructorUsedError;
  String? get witness => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  Coin? get coin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputCopyWith<Input> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputCopyWith<$Res> {
  factory $InputCopyWith(Input value, $Res Function(Input) then) =
      _$InputCopyWithImpl<$Res>;
  $Res call(
      {Prevout? prevout,
      String? script,
      String? witness,
      int? sequence,
      Coin? coin});

  $PrevoutCopyWith<$Res>? get prevout;
  $CoinCopyWith<$Res>? get coin;
}

/// @nodoc
class _$InputCopyWithImpl<$Res> implements $InputCopyWith<$Res> {
  _$InputCopyWithImpl(this._value, this._then);

  final Input _value;
  // ignore: unused_field
  final $Res Function(Input) _then;

  @override
  $Res call({
    Object? prevout = freezed,
    Object? script = freezed,
    Object? witness = freezed,
    Object? sequence = freezed,
    Object? coin = freezed,
  }) {
    return _then(_value.copyWith(
      prevout: prevout == freezed
          ? _value.prevout
          : prevout // ignore: cast_nullable_to_non_nullable
              as Prevout?,
      script: script == freezed
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as String?,
      witness: witness == freezed
          ? _value.witness
          : witness // ignore: cast_nullable_to_non_nullable
              as String?,
      sequence: sequence == freezed
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      coin: coin == freezed
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as Coin?,
    ));
  }

  @override
  $PrevoutCopyWith<$Res>? get prevout {
    if (_value.prevout == null) {
      return null;
    }

    return $PrevoutCopyWith<$Res>(_value.prevout!, (value) {
      return _then(_value.copyWith(prevout: value));
    });
  }

  @override
  $CoinCopyWith<$Res>? get coin {
    if (_value.coin == null) {
      return null;
    }

    return $CoinCopyWith<$Res>(_value.coin!, (value) {
      return _then(_value.copyWith(coin: value));
    });
  }
}

/// @nodoc
abstract class _$InputCopyWith<$Res> implements $InputCopyWith<$Res> {
  factory _$InputCopyWith(_Input value, $Res Function(_Input) then) =
      __$InputCopyWithImpl<$Res>;
  @override
  $Res call(
      {Prevout? prevout,
      String? script,
      String? witness,
      int? sequence,
      Coin? coin});

  @override
  $PrevoutCopyWith<$Res>? get prevout;
  @override
  $CoinCopyWith<$Res>? get coin;
}

/// @nodoc
class __$InputCopyWithImpl<$Res> extends _$InputCopyWithImpl<$Res>
    implements _$InputCopyWith<$Res> {
  __$InputCopyWithImpl(_Input _value, $Res Function(_Input) _then)
      : super(_value, (v) => _then(v as _Input));

  @override
  _Input get _value => super._value as _Input;

  @override
  $Res call({
    Object? prevout = freezed,
    Object? script = freezed,
    Object? witness = freezed,
    Object? sequence = freezed,
    Object? coin = freezed,
  }) {
    return _then(_Input(
      prevout: prevout == freezed
          ? _value.prevout
          : prevout // ignore: cast_nullable_to_non_nullable
              as Prevout?,
      script: script == freezed
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as String?,
      witness: witness == freezed
          ? _value.witness
          : witness // ignore: cast_nullable_to_non_nullable
              as String?,
      sequence: sequence == freezed
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      coin: coin == freezed
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as Coin?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Input implements _Input {
  _$_Input({this.prevout, this.script, this.witness, this.sequence, this.coin});

  factory _$_Input.fromJson(Map<String, dynamic> json) =>
      _$_$_InputFromJson(json);

  @override
  final Prevout? prevout;
  @override
  final String? script;
  @override
  final String? witness;
  @override
  final int? sequence;
  @override
  final Coin? coin;

  @override
  String toString() {
    return 'Input(prevout: $prevout, script: $script, witness: $witness, sequence: $sequence, coin: $coin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Input &&
            (identical(other.prevout, prevout) ||
                const DeepCollectionEquality()
                    .equals(other.prevout, prevout)) &&
            (identical(other.script, script) ||
                const DeepCollectionEquality().equals(other.script, script)) &&
            (identical(other.witness, witness) ||
                const DeepCollectionEquality()
                    .equals(other.witness, witness)) &&
            (identical(other.sequence, sequence) ||
                const DeepCollectionEquality()
                    .equals(other.sequence, sequence)) &&
            (identical(other.coin, coin) ||
                const DeepCollectionEquality().equals(other.coin, coin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(prevout) ^
      const DeepCollectionEquality().hash(script) ^
      const DeepCollectionEquality().hash(witness) ^
      const DeepCollectionEquality().hash(sequence) ^
      const DeepCollectionEquality().hash(coin);

  @JsonKey(ignore: true)
  @override
  _$InputCopyWith<_Input> get copyWith =>
      __$InputCopyWithImpl<_Input>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InputToJson(this);
  }
}

abstract class _Input implements Input {
  factory _Input(
      {Prevout? prevout,
      String? script,
      String? witness,
      int? sequence,
      Coin? coin}) = _$_Input;

  factory _Input.fromJson(Map<String, dynamic> json) = _$_Input.fromJson;

  @override
  Prevout? get prevout => throw _privateConstructorUsedError;
  @override
  String? get script => throw _privateConstructorUsedError;
  @override
  String? get witness => throw _privateConstructorUsedError;
  @override
  int? get sequence => throw _privateConstructorUsedError;
  @override
  Coin? get coin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InputCopyWith<_Input> get copyWith => throw _privateConstructorUsedError;
}
