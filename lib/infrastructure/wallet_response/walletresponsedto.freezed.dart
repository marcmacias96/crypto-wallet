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
      {@JsonKey(includeIfNull: false) required String guid,
      @JsonKey(includeIfNull: false) required String address,
      @JsonKey(includeIfNull: false) required String label}) {
    return _WalletResponseDto(
      guid: guid,
      address: address,
      label: label,
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
  String get guid => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get address => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get label => throw _privateConstructorUsedError;

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
      {@JsonKey(includeIfNull: false) String guid,
      @JsonKey(includeIfNull: false) String address,
      @JsonKey(includeIfNull: false) String label});
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
abstract class _$WalletResponseDtoCopyWith<$Res>
    implements $WalletResponseDtoCopyWith<$Res> {
  factory _$WalletResponseDtoCopyWith(
          _WalletResponseDto value, $Res Function(_WalletResponseDto) then) =
      __$WalletResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) String guid,
      @JsonKey(includeIfNull: false) String address,
      @JsonKey(includeIfNull: false) String label});
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
    Object? guid = freezed,
    Object? address = freezed,
    Object? label = freezed,
  }) {
    return _then(_WalletResponseDto(
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
@JsonSerializable()
class _$_WalletResponseDto implements _WalletResponseDto {
  _$_WalletResponseDto(
      {@JsonKey(includeIfNull: false) required this.guid,
      @JsonKey(includeIfNull: false) required this.address,
      @JsonKey(includeIfNull: false) required this.label});

  factory _$_WalletResponseDto.fromJson(Map<String, dynamic> json) =>
      _$_$_WalletResponseDtoFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String guid;
  @override
  @JsonKey(includeIfNull: false)
  final String address;
  @override
  @JsonKey(includeIfNull: false)
  final String label;

  @override
  String toString() {
    return 'WalletResponseDto(guid: $guid, address: $address, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletResponseDto &&
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
  _$WalletResponseDtoCopyWith<_WalletResponseDto> get copyWith =>
      __$WalletResponseDtoCopyWithImpl<_WalletResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WalletResponseDtoToJson(this);
  }
}

abstract class _WalletResponseDto implements WalletResponseDto {
  factory _WalletResponseDto(
          {@JsonKey(includeIfNull: false) required String guid,
          @JsonKey(includeIfNull: false) required String address,
          @JsonKey(includeIfNull: false) required String label}) =
      _$_WalletResponseDto;

  factory _WalletResponseDto.fromJson(Map<String, dynamic> json) =
      _$_WalletResponseDto.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String get guid => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String get label => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletResponseDtoCopyWith<_WalletResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
