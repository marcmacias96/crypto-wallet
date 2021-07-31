// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'contact_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactDto _$ContactDtoFromJson(Map<String, dynamic> json) {
  return _ContactDto.fromJson(json);
}

/// @nodoc
class _$ContactDtoTearOff {
  const _$ContactDtoTearOff();

  _ContactDto call({required String name, required String address}) {
    return _ContactDto(
      name: name,
      address: address,
    );
  }

  ContactDto fromJson(Map<String, Object> json) {
    return ContactDto.fromJson(json);
  }
}

/// @nodoc
const $ContactDto = _$ContactDtoTearOff();

/// @nodoc
mixin _$ContactDto {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactDtoCopyWith<ContactDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDtoCopyWith<$Res> {
  factory $ContactDtoCopyWith(
          ContactDto value, $Res Function(ContactDto) then) =
      _$ContactDtoCopyWithImpl<$Res>;
  $Res call({String name, String address});
}

/// @nodoc
class _$ContactDtoCopyWithImpl<$Res> implements $ContactDtoCopyWith<$Res> {
  _$ContactDtoCopyWithImpl(this._value, this._then);

  final ContactDto _value;
  // ignore: unused_field
  final $Res Function(ContactDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ContactDtoCopyWith<$Res> implements $ContactDtoCopyWith<$Res> {
  factory _$ContactDtoCopyWith(
          _ContactDto value, $Res Function(_ContactDto) then) =
      __$ContactDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, String address});
}

/// @nodoc
class __$ContactDtoCopyWithImpl<$Res> extends _$ContactDtoCopyWithImpl<$Res>
    implements _$ContactDtoCopyWith<$Res> {
  __$ContactDtoCopyWithImpl(
      _ContactDto _value, $Res Function(_ContactDto) _then)
      : super(_value, (v) => _then(v as _ContactDto));

  @override
  _ContactDto get _value => super._value as _ContactDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_ContactDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ContactDto implements _ContactDto {
  const _$_ContactDto({required this.name, required this.address});

  factory _$_ContactDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ContactDtoFromJson(json);

  @override
  final String name;
  @override
  final String address;

  @override
  String toString() {
    return 'ContactDto(name: $name, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$ContactDtoCopyWith<_ContactDto> get copyWith =>
      __$ContactDtoCopyWithImpl<_ContactDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ContactDtoToJson(this);
  }
}

abstract class _ContactDto implements ContactDto {
  const factory _ContactDto({required String name, required String address}) =
      _$_ContactDto;

  factory _ContactDto.fromJson(Map<String, dynamic> json) =
      _$_ContactDto.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContactDtoCopyWith<_ContactDto> get copyWith =>
      throw _privateConstructorUsedError;
}
