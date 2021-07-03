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

  _WalletResponse call(
      {required String guid, required String address, required String label}) {
    return _WalletResponse(
      guid: guid,
      address: address,
      label: label,
    );
  }
}

/// @nodoc
const $WalletResponse = _$WalletResponseTearOff();

/// @nodoc
mixin _$WalletResponse {
  String get guid => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletResponseCopyWith<WalletResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletResponseCopyWith<$Res> {
  factory $WalletResponseCopyWith(
          WalletResponse value, $Res Function(WalletResponse) then) =
      _$WalletResponseCopyWithImpl<$Res>;
  $Res call({String guid, String address, String label});
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
    Object? guid = freezed,
    Object? address = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
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
  $Res call({String guid, String address, String label});
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
    Object? guid = freezed,
    Object? address = freezed,
    Object? label = freezed,
  }) {
    return _then(_WalletResponse(
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WalletResponse implements _WalletResponse {
  _$_WalletResponse(
      {required this.guid, required this.address, required this.label});

  @override
  final String guid;
  @override
  final String address;
  @override
  final String label;

  @override
  String toString() {
    return 'WalletResponse(guid: $guid, address: $address, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletResponse &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(label);

  @JsonKey(ignore: true)
  @override
  _$WalletResponseCopyWith<_WalletResponse> get copyWith =>
      __$WalletResponseCopyWithImpl<_WalletResponse>(this, _$identity);
}

abstract class _WalletResponse implements WalletResponse {
  factory _WalletResponse(
      {required String guid,
      required String address,
      required String label}) = _$_WalletResponse;

  @override
  String get guid => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get label => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletResponseCopyWith<_WalletResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
