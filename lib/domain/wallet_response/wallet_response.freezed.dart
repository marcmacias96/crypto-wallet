// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wallet_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalletResponseTearOff {
  const _$WalletResponseTearOff();

  _WalletResponse call({required String xpub, required String mnemonic}) {
    return _WalletResponse(
      xpub: xpub,
      mnemonic: mnemonic,
    );
  }
}

/// @nodoc
const $WalletResponse = _$WalletResponseTearOff();

/// @nodoc
mixin _$WalletResponse {
  String get xpub => throw _privateConstructorUsedError;
  String get mnemonic => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletResponseCopyWith<WalletResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletResponseCopyWith<$Res> {
  factory $WalletResponseCopyWith(
          WalletResponse value, $Res Function(WalletResponse) then) =
      _$WalletResponseCopyWithImpl<$Res>;
  $Res call({String xpub, String mnemonic});
}

/// @nodoc
class _$WalletResponseCopyWithImpl<$Res>
    implements $WalletResponseCopyWith<$Res> {
  _$WalletResponseCopyWithImpl(this._value, this._then);

  final WalletResponse _value;
  // ignore: unused_field
  final $Res Function(WalletResponse) _then;

  @override
  $Res call({
    Object? xpub = freezed,
    Object? mnemonic = freezed,
  }) {
    return _then(_value.copyWith(
      xpub: xpub == freezed
          ? _value.xpub
          : xpub // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WalletResponseCopyWith<$Res>
    implements $WalletResponseCopyWith<$Res> {
  factory _$WalletResponseCopyWith(
          _WalletResponse value, $Res Function(_WalletResponse) then) =
      __$WalletResponseCopyWithImpl<$Res>;
  @override
  $Res call({String xpub, String mnemonic});
}

/// @nodoc
class __$WalletResponseCopyWithImpl<$Res>
    extends _$WalletResponseCopyWithImpl<$Res>
    implements _$WalletResponseCopyWith<$Res> {
  __$WalletResponseCopyWithImpl(
      _WalletResponse _value, $Res Function(_WalletResponse) _then)
      : super(_value, (v) => _then(v as _WalletResponse));

  @override
  _WalletResponse get _value => super._value as _WalletResponse;

  @override
  $Res call({
    Object? xpub = freezed,
    Object? mnemonic = freezed,
  }) {
    return _then(_WalletResponse(
      xpub: xpub == freezed
          ? _value.xpub
          : xpub // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_WalletResponse implements _WalletResponse {
  _$_WalletResponse({required this.xpub, required this.mnemonic});

  @override
  final String xpub;
  @override
  final String mnemonic;

  @override
  String toString() {
    return 'WalletResponse(xpub: $xpub, mnemonic: $mnemonic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletResponse &&
            (identical(other.xpub, xpub) ||
                const DeepCollectionEquality().equals(other.xpub, xpub)) &&
            (identical(other.mnemonic, mnemonic) ||
                const DeepCollectionEquality()
                    .equals(other.mnemonic, mnemonic)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(xpub) ^
      const DeepCollectionEquality().hash(mnemonic);

  @JsonKey(ignore: true)
  @override
  _$WalletResponseCopyWith<_WalletResponse> get copyWith =>
      __$WalletResponseCopyWithImpl<_WalletResponse>(this, _$identity);
}

abstract class _WalletResponse implements WalletResponse {
  factory _WalletResponse({required String xpub, required String mnemonic}) =
      _$_WalletResponse;

  @override
  String get xpub => throw _privateConstructorUsedError;
  @override
  String get mnemonic => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletResponseCopyWith<_WalletResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddressResponseTearOff {
  const _$AddressResponseTearOff();

  _AddressResponse call({required String address}) {
    return _AddressResponse(
      address: address,
    );
  }
}

/// @nodoc
const $AddressResponse = _$AddressResponseTearOff();

/// @nodoc
mixin _$AddressResponse {
  String get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressResponseCopyWith<AddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressResponseCopyWith<$Res> {
  factory $AddressResponseCopyWith(
          AddressResponse value, $Res Function(AddressResponse) then) =
      _$AddressResponseCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class _$AddressResponseCopyWithImpl<$Res>
    implements $AddressResponseCopyWith<$Res> {
  _$AddressResponseCopyWithImpl(this._value, this._then);

  final AddressResponse _value;
  // ignore: unused_field
  final $Res Function(AddressResponse) _then;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AddressResponseCopyWith<$Res>
    implements $AddressResponseCopyWith<$Res> {
  factory _$AddressResponseCopyWith(
          _AddressResponse value, $Res Function(_AddressResponse) then) =
      __$AddressResponseCopyWithImpl<$Res>;
  @override
  $Res call({String address});
}

/// @nodoc
class __$AddressResponseCopyWithImpl<$Res>
    extends _$AddressResponseCopyWithImpl<$Res>
    implements _$AddressResponseCopyWith<$Res> {
  __$AddressResponseCopyWithImpl(
      _AddressResponse _value, $Res Function(_AddressResponse) _then)
      : super(_value, (v) => _then(v as _AddressResponse));

  @override
  _AddressResponse get _value => super._value as _AddressResponse;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_AddressResponse(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_AddressResponse implements _AddressResponse {
  _$_AddressResponse({required this.address});

  @override
  final String address;

  @override
  String toString() {
    return 'AddressResponse(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddressResponse &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$AddressResponseCopyWith<_AddressResponse> get copyWith =>
      __$AddressResponseCopyWithImpl<_AddressResponse>(this, _$identity);
}

abstract class _AddressResponse implements AddressResponse {
  factory _AddressResponse({required String address}) = _$_AddressResponse;

  @override
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddressResponseCopyWith<_AddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BalanceResponseTearOff {
  const _$BalanceResponseTearOff();

  _BalanceResponse call({required double incoming, required double outgoing}) {
    return _BalanceResponse(
      incoming: incoming,
      outgoing: outgoing,
    );
  }
}

/// @nodoc
const $BalanceResponse = _$BalanceResponseTearOff();

/// @nodoc
mixin _$BalanceResponse {
  double get incoming => throw _privateConstructorUsedError;
  double get outgoing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BalanceResponseCopyWith<BalanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceResponseCopyWith<$Res> {
  factory $BalanceResponseCopyWith(
          BalanceResponse value, $Res Function(BalanceResponse) then) =
      _$BalanceResponseCopyWithImpl<$Res>;
  $Res call({double incoming, double outgoing});
}

/// @nodoc
class _$BalanceResponseCopyWithImpl<$Res>
    implements $BalanceResponseCopyWith<$Res> {
  _$BalanceResponseCopyWithImpl(this._value, this._then);

  final BalanceResponse _value;
  // ignore: unused_field
  final $Res Function(BalanceResponse) _then;

  @override
  $Res call({
    Object? incoming = freezed,
    Object? outgoing = freezed,
  }) {
    return _then(_value.copyWith(
      incoming: incoming == freezed
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as double,
      outgoing: outgoing == freezed
          ? _value.outgoing
          : outgoing // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$BalanceResponseCopyWith<$Res>
    implements $BalanceResponseCopyWith<$Res> {
  factory _$BalanceResponseCopyWith(
          _BalanceResponse value, $Res Function(_BalanceResponse) then) =
      __$BalanceResponseCopyWithImpl<$Res>;
  @override
  $Res call({double incoming, double outgoing});
}

/// @nodoc
class __$BalanceResponseCopyWithImpl<$Res>
    extends _$BalanceResponseCopyWithImpl<$Res>
    implements _$BalanceResponseCopyWith<$Res> {
  __$BalanceResponseCopyWithImpl(
      _BalanceResponse _value, $Res Function(_BalanceResponse) _then)
      : super(_value, (v) => _then(v as _BalanceResponse));

  @override
  _BalanceResponse get _value => super._value as _BalanceResponse;

  @override
  $Res call({
    Object? incoming = freezed,
    Object? outgoing = freezed,
  }) {
    return _then(_BalanceResponse(
      incoming: incoming == freezed
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as double,
      outgoing: outgoing == freezed
          ? _value.outgoing
          : outgoing // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
class _$_BalanceResponse implements _BalanceResponse {
  _$_BalanceResponse({required this.incoming, required this.outgoing});

  @override
  final double incoming;
  @override
  final double outgoing;

  @override
  String toString() {
    return 'BalanceResponse(incoming: $incoming, outgoing: $outgoing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BalanceResponse &&
            (identical(other.incoming, incoming) ||
                const DeepCollectionEquality()
                    .equals(other.incoming, incoming)) &&
            (identical(other.outgoing, outgoing) ||
                const DeepCollectionEquality()
                    .equals(other.outgoing, outgoing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(incoming) ^
      const DeepCollectionEquality().hash(outgoing);

  @JsonKey(ignore: true)
  @override
  _$BalanceResponseCopyWith<_BalanceResponse> get copyWith =>
      __$BalanceResponseCopyWithImpl<_BalanceResponse>(this, _$identity);
}

abstract class _BalanceResponse implements BalanceResponse {
  factory _BalanceResponse(
      {required double incoming,
      required double outgoing}) = _$_BalanceResponse;

  @override
  double get incoming => throw _privateConstructorUsedError;
  @override
  double get outgoing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BalanceResponseCopyWith<_BalanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
