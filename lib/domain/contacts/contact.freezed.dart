// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactTearOff {
  const _$ContactTearOff();

  _Contact call({required Name name, required WalletId walletId}) {
    return _Contact(
      name: name,
      walletId: walletId,
    );
  }
}

/// @nodoc
const $Contact = _$ContactTearOff();

/// @nodoc
mixin _$Contact {
  Name get name => throw _privateConstructorUsedError;
  WalletId get walletId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res>;
  $Res call({Name name, WalletId walletId});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res> implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  final Contact _value;
  // ignore: unused_field
  final $Res Function(Contact) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? walletId = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      walletId: walletId == freezed
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as WalletId,
    ));
  }
}

/// @nodoc
abstract class _$ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$ContactCopyWith(_Contact value, $Res Function(_Contact) then) =
      __$ContactCopyWithImpl<$Res>;
  @override
  $Res call({Name name, WalletId walletId});
}

/// @nodoc
class __$ContactCopyWithImpl<$Res> extends _$ContactCopyWithImpl<$Res>
    implements _$ContactCopyWith<$Res> {
  __$ContactCopyWithImpl(_Contact _value, $Res Function(_Contact) _then)
      : super(_value, (v) => _then(v as _Contact));

  @override
  _Contact get _value => super._value as _Contact;

  @override
  $Res call({
    Object? name = freezed,
    Object? walletId = freezed,
  }) {
    return _then(_Contact(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      walletId: walletId == freezed
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as WalletId,
    ));
  }
}

/// @nodoc

class _$_Contact implements _Contact {
  const _$_Contact({required this.name, required this.walletId});

  @override
  final Name name;
  @override
  final WalletId walletId;

  @override
  String toString() {
    return 'Contact(name: $name, walletId: $walletId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Contact &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.walletId, walletId) ||
                const DeepCollectionEquality()
                    .equals(other.walletId, walletId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(walletId);

  @JsonKey(ignore: true)
  @override
  _$ContactCopyWith<_Contact> get copyWith =>
      __$ContactCopyWithImpl<_Contact>(this, _$identity);
}

abstract class _Contact implements Contact {
  const factory _Contact({required Name name, required WalletId walletId}) =
      _$_Contact;

  @override
  Name get name => throw _privateConstructorUsedError;
  @override
  WalletId get walletId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContactCopyWith<_Contact> get copyWith =>
      throw _privateConstructorUsedError;
}
