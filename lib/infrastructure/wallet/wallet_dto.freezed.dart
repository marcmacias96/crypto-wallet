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
      {@JsonKey(ignore: true)
          String? id,
      @JsonKey(includeIfNull: false, name: 'api_code')
          required String apiCode,
      @JsonKey(includeIfNull: false, name: 'wallet_id')
          required String walletId}) {
    return _WalletDto(
      id: id,
      apiCode: apiCode,
      walletId: walletId,
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
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'api_code')
  String get apiCode => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'wallet_id')
  String get walletId => throw _privateConstructorUsedError;

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
      {@JsonKey(ignore: true) String? id,
      @JsonKey(includeIfNull: false, name: 'api_code') String apiCode,
      @JsonKey(includeIfNull: false, name: 'wallet_id') String walletId});
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
    Object? apiCode = freezed,
    Object? walletId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      apiCode: apiCode == freezed
          ? _value.apiCode
          : apiCode // ignore: cast_nullable_to_non_nullable
              as String,
      walletId: walletId == freezed
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(ignore: true) String? id,
      @JsonKey(includeIfNull: false, name: 'api_code') String apiCode,
      @JsonKey(includeIfNull: false, name: 'wallet_id') String walletId});
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
    Object? apiCode = freezed,
    Object? walletId = freezed,
  }) {
    return _then(_WalletDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      apiCode: apiCode == freezed
          ? _value.apiCode
          : apiCode // ignore: cast_nullable_to_non_nullable
              as String,
      walletId: walletId == freezed
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WalletDto implements _WalletDto {
  const _$_WalletDto(
      {@JsonKey(ignore: true)
          this.id,
      @JsonKey(includeIfNull: false, name: 'api_code')
          required this.apiCode,
      @JsonKey(includeIfNull: false, name: 'wallet_id')
          required this.walletId});

  factory _$_WalletDto.fromJson(Map<String, dynamic> json) =>
      _$_$_WalletDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  @JsonKey(includeIfNull: false, name: 'api_code')
  final String apiCode;
  @override
  @JsonKey(includeIfNull: false, name: 'wallet_id')
  final String walletId;

  @override
  String toString() {
    return 'WalletDto(id: $id, apiCode: $apiCode, walletId: $walletId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.apiCode, apiCode) ||
                const DeepCollectionEquality()
                    .equals(other.apiCode, apiCode)) &&
            (identical(other.walletId, walletId) ||
                const DeepCollectionEquality()
                    .equals(other.walletId, walletId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(apiCode) ^
      const DeepCollectionEquality().hash(walletId);

  @JsonKey(ignore: true)
  @override
  _$WalletDtoCopyWith<_WalletDto> get copyWith =>
      __$WalletDtoCopyWithImpl<_WalletDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WalletDtoToJson(this);
  }
}

abstract class _WalletDto implements WalletDto {
  const factory _WalletDto(
      {@JsonKey(ignore: true)
          String? id,
      @JsonKey(includeIfNull: false, name: 'api_code')
          required String apiCode,
      @JsonKey(includeIfNull: false, name: 'wallet_id')
          required String walletId}) = _$_WalletDto;

  factory _WalletDto.fromJson(Map<String, dynamic> json) =
      _$_WalletDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'api_code')
  String get apiCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'wallet_id')
  String get walletId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletDtoCopyWith<_WalletDto> get copyWith =>
      throw _privateConstructorUsedError;
}
