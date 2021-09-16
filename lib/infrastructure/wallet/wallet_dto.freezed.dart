// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wallet_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletDto _$WalletDtoFromJson(Map<String, dynamic> json) {
  return _WalletDto.fromJson(json);
}

/// @nodoc
class _$WalletDtoTearOff {
  const _$WalletDtoTearOff();

  _WalletDto call(
      {@JsonKey(ignore: false)
          required String id,
      @JsonKey(includeIfNull: false)
          required String address,
      @JsonKey(includeIfNull: false)
          String? name,
      @JsonKey(includeIfNull: false)
          required String mnemonic,
      @JsonKey(name: 'is_default')
          required bool isDefault,
      @JsonKey(includeIfNull: false, name: 'wallet_id')
          required String walletId,
      @JsonKey(includeIfNull: false, name: 'private_key')
          required String privateKey}) {
    return _WalletDto(
      id: id,
      address: address,
      name: name,
      mnemonic: mnemonic,
      isDefault: isDefault,
      walletId: walletId,
      privateKey: privateKey,
    );
  }

  WalletDto fromJson(Map<String, Object> json) {
    return WalletDto.fromJson(json);
  }
}

/// @nodoc
const $WalletDto = _$WalletDtoTearOff();

/// @nodoc
mixin _$WalletDto {
  @JsonKey(ignore: false)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get address => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get mnemonic => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'wallet_id')
  String get walletId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'private_key')
  String get privateKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletDtoCopyWith<WalletDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDtoCopyWith<$Res> {
  factory $WalletDtoCopyWith(WalletDto value, $Res Function(WalletDto) then) =
      _$WalletDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: false) String id,
      @JsonKey(includeIfNull: false) String address,
      @JsonKey(includeIfNull: false) String? name,
      @JsonKey(includeIfNull: false) String mnemonic,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(includeIfNull: false, name: 'wallet_id') String walletId,
      @JsonKey(includeIfNull: false, name: 'private_key') String privateKey});
}

/// @nodoc
class _$WalletDtoCopyWithImpl<$Res> implements $WalletDtoCopyWith<$Res> {
  _$WalletDtoCopyWithImpl(this._value, this._then);

  final WalletDto _value;
  // ignore: unused_field
  final $Res Function(WalletDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? name = freezed,
    Object? mnemonic = freezed,
    Object? isDefault = freezed,
    Object? walletId = freezed,
    Object? privateKey = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: isDefault == freezed
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      walletId: walletId == freezed
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WalletDtoCopyWith<$Res> implements $WalletDtoCopyWith<$Res> {
  factory _$WalletDtoCopyWith(
          _WalletDto value, $Res Function(_WalletDto) then) =
      __$WalletDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: false) String id,
      @JsonKey(includeIfNull: false) String address,
      @JsonKey(includeIfNull: false) String? name,
      @JsonKey(includeIfNull: false) String mnemonic,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(includeIfNull: false, name: 'wallet_id') String walletId,
      @JsonKey(includeIfNull: false, name: 'private_key') String privateKey});
}

/// @nodoc
class __$WalletDtoCopyWithImpl<$Res> extends _$WalletDtoCopyWithImpl<$Res>
    implements _$WalletDtoCopyWith<$Res> {
  __$WalletDtoCopyWithImpl(_WalletDto _value, $Res Function(_WalletDto) _then)
      : super(_value, (v) => _then(v as _WalletDto));

  @override
  _WalletDto get _value => super._value as _WalletDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? name = freezed,
    Object? mnemonic = freezed,
    Object? isDefault = freezed,
    Object? walletId = freezed,
    Object? privateKey = freezed,
  }) {
    return _then(_WalletDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: isDefault == freezed
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      walletId: walletId == freezed
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_WalletDto extends _WalletDto {
  const _$_WalletDto(
      {@JsonKey(ignore: false)
          required this.id,
      @JsonKey(includeIfNull: false)
          required this.address,
      @JsonKey(includeIfNull: false)
          this.name,
      @JsonKey(includeIfNull: false)
          required this.mnemonic,
      @JsonKey(name: 'is_default')
          required this.isDefault,
      @JsonKey(includeIfNull: false, name: 'wallet_id')
          required this.walletId,
      @JsonKey(includeIfNull: false, name: 'private_key')
          required this.privateKey})
      : super._();

  factory _$_WalletDto.fromJson(Map<String, dynamic> json) =>
      _$_$_WalletDtoFromJson(json);

  @override
  @JsonKey(ignore: false)
  final String id;
  @override
  @JsonKey(includeIfNull: false)
  final String address;
  @override
  @JsonKey(includeIfNull: false)
  final String? name;
  @override
  @JsonKey(includeIfNull: false)
  final String mnemonic;
  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @override
  @JsonKey(includeIfNull: false, name: 'wallet_id')
  final String walletId;
  @override
  @JsonKey(includeIfNull: false, name: 'private_key')
  final String privateKey;

  @override
  String toString() {
    return 'WalletDto(id: $id, address: $address, name: $name, mnemonic: $mnemonic, isDefault: $isDefault, walletId: $walletId, privateKey: $privateKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.mnemonic, mnemonic) ||
                const DeepCollectionEquality()
                    .equals(other.mnemonic, mnemonic)) &&
            (identical(other.isDefault, isDefault) ||
                const DeepCollectionEquality()
                    .equals(other.isDefault, isDefault)) &&
            (identical(other.walletId, walletId) ||
                const DeepCollectionEquality()
                    .equals(other.walletId, walletId)) &&
            (identical(other.privateKey, privateKey) ||
                const DeepCollectionEquality()
                    .equals(other.privateKey, privateKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(mnemonic) ^
      const DeepCollectionEquality().hash(isDefault) ^
      const DeepCollectionEquality().hash(walletId) ^
      const DeepCollectionEquality().hash(privateKey);

  @JsonKey(ignore: true)
  @override
  _$WalletDtoCopyWith<_WalletDto> get copyWith =>
      __$WalletDtoCopyWithImpl<_WalletDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WalletDtoToJson(this);
  }
}

abstract class _WalletDto extends WalletDto {
  const factory _WalletDto(
      {@JsonKey(ignore: false)
          required String id,
      @JsonKey(includeIfNull: false)
          required String address,
      @JsonKey(includeIfNull: false)
          String? name,
      @JsonKey(includeIfNull: false)
          required String mnemonic,
      @JsonKey(name: 'is_default')
          required bool isDefault,
      @JsonKey(includeIfNull: false, name: 'wallet_id')
          required String walletId,
      @JsonKey(includeIfNull: false, name: 'private_key')
          required String privateKey}) = _$_WalletDto;
  const _WalletDto._() : super._();

  factory _WalletDto.fromJson(Map<String, dynamic> json) =
      _$_WalletDto.fromJson;

  @override
  @JsonKey(ignore: false)
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String get mnemonic => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'wallet_id')
  String get walletId => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'private_key')
  String get privateKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletDtoCopyWith<_WalletDto> get copyWith =>
      throw _privateConstructorUsedError;
}
