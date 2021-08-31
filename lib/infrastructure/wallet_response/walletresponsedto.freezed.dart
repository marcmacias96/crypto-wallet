// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'walletresponsedto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletResponseDto _$WalletResponseDtoFromJson(Map<String, dynamic> json) {
  return _WalletResponseDto.fromJson(json);
}

/// @nodoc
class _$WalletResponseDtoTearOff {
  const _$WalletResponseDtoTearOff();

  _WalletResponseDto call(
      {@JsonKey(includeIfNull: false) required String mnemonic,
      @JsonKey(includeIfNull: false) required String xpub}) {
    return _WalletResponseDto(
      mnemonic: mnemonic,
      xpub: xpub,
    );
  }

  WalletResponseDto fromJson(Map<String, Object> json) {
    return WalletResponseDto.fromJson(json);
  }
}

/// @nodoc
const $WalletResponseDto = _$WalletResponseDtoTearOff();

/// @nodoc
mixin _$WalletResponseDto {
  @JsonKey(includeIfNull: false)
  String get mnemonic => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get xpub => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletResponseDtoCopyWith<WalletResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletResponseDtoCopyWith<$Res> {
  factory $WalletResponseDtoCopyWith(
          WalletResponseDto value, $Res Function(WalletResponseDto) then) =
      _$WalletResponseDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) String mnemonic,
      @JsonKey(includeIfNull: false) String xpub});
}

/// @nodoc
class _$WalletResponseDtoCopyWithImpl<$Res>
    implements $WalletResponseDtoCopyWith<$Res> {
  _$WalletResponseDtoCopyWithImpl(this._value, this._then);

  final WalletResponseDto _value;
  // ignore: unused_field
  final $Res Function(WalletResponseDto) _then;

  @override
  $Res call({
    Object? mnemonic = freezed,
    Object? xpub = freezed,
  }) {
    return _then(_value.copyWith(
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
      xpub: xpub == freezed
          ? _value.xpub
          : xpub // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WalletResponseDtoCopyWith<$Res>
    implements $WalletResponseDtoCopyWith<$Res> {
  factory _$WalletResponseDtoCopyWith(
          _WalletResponseDto value, $Res Function(_WalletResponseDto) then) =
      __$WalletResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) String mnemonic,
      @JsonKey(includeIfNull: false) String xpub});
}

/// @nodoc
class __$WalletResponseDtoCopyWithImpl<$Res>
    extends _$WalletResponseDtoCopyWithImpl<$Res>
    implements _$WalletResponseDtoCopyWith<$Res> {
  __$WalletResponseDtoCopyWithImpl(
      _WalletResponseDto _value, $Res Function(_WalletResponseDto) _then)
      : super(_value, (v) => _then(v as _WalletResponseDto));

  @override
  _WalletResponseDto get _value => super._value as _WalletResponseDto;

  @override
  $Res call({
    Object? mnemonic = freezed,
    Object? xpub = freezed,
  }) {
    return _then(_WalletResponseDto(
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
      xpub: xpub == freezed
          ? _value.xpub
          : xpub // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WalletResponseDto extends _WalletResponseDto {
  _$_WalletResponseDto(
      {@JsonKey(includeIfNull: false) required this.mnemonic,
      @JsonKey(includeIfNull: false) required this.xpub})
      : super._();

  factory _$_WalletResponseDto.fromJson(Map<String, dynamic> json) =>
      _$_$_WalletResponseDtoFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String mnemonic;
  @override
  @JsonKey(includeIfNull: false)
  final String xpub;

  @override
  String toString() {
    return 'WalletResponseDto(mnemonic: $mnemonic, xpub: $xpub)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletResponseDto &&
            (identical(other.mnemonic, mnemonic) ||
                const DeepCollectionEquality()
                    .equals(other.mnemonic, mnemonic)) &&
            (identical(other.xpub, xpub) ||
                const DeepCollectionEquality().equals(other.xpub, xpub)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mnemonic) ^
      const DeepCollectionEquality().hash(xpub);

  @JsonKey(ignore: true)
  @override
  _$WalletResponseDtoCopyWith<_WalletResponseDto> get copyWith =>
      __$WalletResponseDtoCopyWithImpl<_WalletResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WalletResponseDtoToJson(this);
  }
}

abstract class _WalletResponseDto extends WalletResponseDto {
  factory _WalletResponseDto(
          {@JsonKey(includeIfNull: false) required String mnemonic,
          @JsonKey(includeIfNull: false) required String xpub}) =
      _$_WalletResponseDto;
  _WalletResponseDto._() : super._();

  factory _WalletResponseDto.fromJson(Map<String, dynamic> json) =
      _$_WalletResponseDto.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String get mnemonic => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String get xpub => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletResponseDtoCopyWith<_WalletResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressResponseDto _$AddressResponseDtoFromJson(Map<String, dynamic> json) {
  return _AddressResponseDto.fromJson(json);
}

/// @nodoc
class _$AddressResponseDtoTearOff {
  const _$AddressResponseDtoTearOff();

  _AddressResponseDto call(
      {@JsonKey(includeIfNull: false) required String address}) {
    return _AddressResponseDto(
      address: address,
    );
  }

  AddressResponseDto fromJson(Map<String, Object> json) {
    return AddressResponseDto.fromJson(json);
  }
}

/// @nodoc
const $AddressResponseDto = _$AddressResponseDtoTearOff();

/// @nodoc
mixin _$AddressResponseDto {
  @JsonKey(includeIfNull: false)
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressResponseDtoCopyWith<AddressResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressResponseDtoCopyWith<$Res> {
  factory $AddressResponseDtoCopyWith(
          AddressResponseDto value, $Res Function(AddressResponseDto) then) =
      _$AddressResponseDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(includeIfNull: false) String address});
}

/// @nodoc
class _$AddressResponseDtoCopyWithImpl<$Res>
    implements $AddressResponseDtoCopyWith<$Res> {
  _$AddressResponseDtoCopyWithImpl(this._value, this._then);

  final AddressResponseDto _value;
  // ignore: unused_field
  final $Res Function(AddressResponseDto) _then;

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
abstract class _$AddressResponseDtoCopyWith<$Res>
    implements $AddressResponseDtoCopyWith<$Res> {
  factory _$AddressResponseDtoCopyWith(
          _AddressResponseDto value, $Res Function(_AddressResponseDto) then) =
      __$AddressResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(includeIfNull: false) String address});
}

/// @nodoc
class __$AddressResponseDtoCopyWithImpl<$Res>
    extends _$AddressResponseDtoCopyWithImpl<$Res>
    implements _$AddressResponseDtoCopyWith<$Res> {
  __$AddressResponseDtoCopyWithImpl(
      _AddressResponseDto _value, $Res Function(_AddressResponseDto) _then)
      : super(_value, (v) => _then(v as _AddressResponseDto));

  @override
  _AddressResponseDto get _value => super._value as _AddressResponseDto;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_AddressResponseDto(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AddressResponseDto extends _AddressResponseDto {
  _$_AddressResponseDto({@JsonKey(includeIfNull: false) required this.address})
      : super._();

  factory _$_AddressResponseDto.fromJson(Map<String, dynamic> json) =>
      _$_$_AddressResponseDtoFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String address;

  @override
  String toString() {
    return 'AddressResponseDto(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddressResponseDto &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$AddressResponseDtoCopyWith<_AddressResponseDto> get copyWith =>
      __$AddressResponseDtoCopyWithImpl<_AddressResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddressResponseDtoToJson(this);
  }
}

abstract class _AddressResponseDto extends AddressResponseDto {
  factory _AddressResponseDto(
          {@JsonKey(includeIfNull: false) required String address}) =
      _$_AddressResponseDto;
  _AddressResponseDto._() : super._();

  factory _AddressResponseDto.fromJson(Map<String, dynamic> json) =
      _$_AddressResponseDto.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddressResponseDtoCopyWith<_AddressResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletBalanceDto _$WalletBalanceDtoFromJson(Map<String, dynamic> json) {
  return _WalletBalanceDto.fromJson(json);
}

/// @nodoc
class _$WalletBalanceDtoTearOff {
  const _$WalletBalanceDtoTearOff();

  _WalletBalanceDto call(
      {@JsonKey(includeIfNull: false) required String incoming,
      @JsonKey(includeIfNull: false) required String outgoing}) {
    return _WalletBalanceDto(
      incoming: incoming,
      outgoing: outgoing,
    );
  }

  WalletBalanceDto fromJson(Map<String, Object> json) {
    return WalletBalanceDto.fromJson(json);
  }
}

/// @nodoc
const $WalletBalanceDto = _$WalletBalanceDtoTearOff();

/// @nodoc
mixin _$WalletBalanceDto {
  @JsonKey(includeIfNull: false)
  String get incoming => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get outgoing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletBalanceDtoCopyWith<WalletBalanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletBalanceDtoCopyWith<$Res> {
  factory $WalletBalanceDtoCopyWith(
          WalletBalanceDto value, $Res Function(WalletBalanceDto) then) =
      _$WalletBalanceDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) String incoming,
      @JsonKey(includeIfNull: false) String outgoing});
}

/// @nodoc
class _$WalletBalanceDtoCopyWithImpl<$Res>
    implements $WalletBalanceDtoCopyWith<$Res> {
  _$WalletBalanceDtoCopyWithImpl(this._value, this._then);

  final WalletBalanceDto _value;
  // ignore: unused_field
  final $Res Function(WalletBalanceDto) _then;

  @override
  $Res call({
    Object? incoming = freezed,
    Object? outgoing = freezed,
  }) {
    return _then(_value.copyWith(
      incoming: incoming == freezed
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as String,
      outgoing: outgoing == freezed
          ? _value.outgoing
          : outgoing // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WalletBalanceDtoCopyWith<$Res>
    implements $WalletBalanceDtoCopyWith<$Res> {
  factory _$WalletBalanceDtoCopyWith(
          _WalletBalanceDto value, $Res Function(_WalletBalanceDto) then) =
      __$WalletBalanceDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) String incoming,
      @JsonKey(includeIfNull: false) String outgoing});
}

/// @nodoc
class __$WalletBalanceDtoCopyWithImpl<$Res>
    extends _$WalletBalanceDtoCopyWithImpl<$Res>
    implements _$WalletBalanceDtoCopyWith<$Res> {
  __$WalletBalanceDtoCopyWithImpl(
      _WalletBalanceDto _value, $Res Function(_WalletBalanceDto) _then)
      : super(_value, (v) => _then(v as _WalletBalanceDto));

  @override
  _WalletBalanceDto get _value => super._value as _WalletBalanceDto;

  @override
  $Res call({
    Object? incoming = freezed,
    Object? outgoing = freezed,
  }) {
    return _then(_WalletBalanceDto(
      incoming: incoming == freezed
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as String,
      outgoing: outgoing == freezed
          ? _value.outgoing
          : outgoing // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WalletBalanceDto extends _WalletBalanceDto {
  _$_WalletBalanceDto(
      {@JsonKey(includeIfNull: false) required this.incoming,
      @JsonKey(includeIfNull: false) required this.outgoing})
      : super._();

  factory _$_WalletBalanceDto.fromJson(Map<String, dynamic> json) =>
      _$_$_WalletBalanceDtoFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String incoming;
  @override
  @JsonKey(includeIfNull: false)
  final String outgoing;

  @override
  String toString() {
    return 'WalletBalanceDto(incoming: $incoming, outgoing: $outgoing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletBalanceDto &&
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
  _$WalletBalanceDtoCopyWith<_WalletBalanceDto> get copyWith =>
      __$WalletBalanceDtoCopyWithImpl<_WalletBalanceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WalletBalanceDtoToJson(this);
  }
}

abstract class _WalletBalanceDto extends WalletBalanceDto {
  factory _WalletBalanceDto(
          {@JsonKey(includeIfNull: false) required String incoming,
          @JsonKey(includeIfNull: false) required String outgoing}) =
      _$_WalletBalanceDto;
  _WalletBalanceDto._() : super._();

  factory _WalletBalanceDto.fromJson(Map<String, dynamic> json) =
      _$_WalletBalanceDto.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String get incoming => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String get outgoing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletBalanceDtoCopyWith<_WalletBalanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
