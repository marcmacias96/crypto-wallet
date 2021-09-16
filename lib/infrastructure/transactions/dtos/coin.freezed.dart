// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'coin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Coin _$CoinFromJson(Map<String, dynamic> json) {
  return _Coin.fromJson(json);
}

/// @nodoc
class _$CoinTearOff {
  const _$CoinTearOff();

  _Coin call(
      {int? version,
      int? height,
      double? value,
      String? script,
      String? address,
      bool? coinbase}) {
    return _Coin(
      version: version,
      height: height,
      value: value,
      script: script,
      address: address,
      coinbase: coinbase,
    );
  }

  Coin fromJson(Map<String, Object> json) {
    return Coin.fromJson(json);
  }
}

/// @nodoc
const $Coin = _$CoinTearOff();

/// @nodoc
mixin _$Coin {
  int? get version => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;
  String? get script => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  bool? get coinbase => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinCopyWith<Coin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinCopyWith<$Res> {
  factory $CoinCopyWith(Coin value, $Res Function(Coin) then) =
      _$CoinCopyWithImpl<$Res>;
  $Res call(
      {int? version,
      int? height,
      double? value,
      String? script,
      String? address,
      bool? coinbase});
}

/// @nodoc
class _$CoinCopyWithImpl<$Res> implements $CoinCopyWith<$Res> {
  _$CoinCopyWithImpl(this._value, this._then);

  final Coin _value;
  // ignore: unused_field
  final $Res Function(Coin) _then;

  @override
  $Res call({
    Object? version = freezed,
    Object? height = freezed,
    Object? value = freezed,
    Object? script = freezed,
    Object? address = freezed,
    Object? coinbase = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      script: script == freezed
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      coinbase: coinbase == freezed
          ? _value.coinbase
          : coinbase // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$CoinCopyWith<$Res> implements $CoinCopyWith<$Res> {
  factory _$CoinCopyWith(_Coin value, $Res Function(_Coin) then) =
      __$CoinCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? version,
      int? height,
      double? value,
      String? script,
      String? address,
      bool? coinbase});
}

/// @nodoc
class __$CoinCopyWithImpl<$Res> extends _$CoinCopyWithImpl<$Res>
    implements _$CoinCopyWith<$Res> {
  __$CoinCopyWithImpl(_Coin _value, $Res Function(_Coin) _then)
      : super(_value, (v) => _then(v as _Coin));

  @override
  _Coin get _value => super._value as _Coin;

  @override
  $Res call({
    Object? version = freezed,
    Object? height = freezed,
    Object? value = freezed,
    Object? script = freezed,
    Object? address = freezed,
    Object? coinbase = freezed,
  }) {
    return _then(_Coin(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      script: script == freezed
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      coinbase: coinbase == freezed
          ? _value.coinbase
          : coinbase // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Coin implements _Coin {
  _$_Coin(
      {this.version,
      this.height,
      this.value,
      this.script,
      this.address,
      this.coinbase});

  factory _$_Coin.fromJson(Map<String, dynamic> json) =>
      _$_$_CoinFromJson(json);

  @override
  final int? version;
  @override
  final int? height;
  @override
  final double? value;
  @override
  final String? script;
  @override
  final String? address;
  @override
  final bool? coinbase;

  @override
  String toString() {
    return 'Coin(version: $version, height: $height, value: $value, script: $script, address: $address, coinbase: $coinbase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Coin &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.script, script) ||
                const DeepCollectionEquality().equals(other.script, script)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coinbase, coinbase) ||
                const DeepCollectionEquality()
                    .equals(other.coinbase, coinbase)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(script) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coinbase);

  @JsonKey(ignore: true)
  @override
  _$CoinCopyWith<_Coin> get copyWith =>
      __$CoinCopyWithImpl<_Coin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CoinToJson(this);
  }
}

abstract class _Coin implements Coin {
  factory _Coin(
      {int? version,
      int? height,
      double? value,
      String? script,
      String? address,
      bool? coinbase}) = _$_Coin;

  factory _Coin.fromJson(Map<String, dynamic> json) = _$_Coin.fromJson;

  @override
  int? get version => throw _privateConstructorUsedError;
  @override
  int? get height => throw _privateConstructorUsedError;
  @override
  double? get value => throw _privateConstructorUsedError;
  @override
  String? get script => throw _privateConstructorUsedError;
  @override
  String? get address => throw _privateConstructorUsedError;
  @override
  bool? get coinbase => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoinCopyWith<_Coin> get copyWith => throw _privateConstructorUsedError;
}
