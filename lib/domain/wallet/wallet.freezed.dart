// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalletTearOff {
  const _$WalletTearOff();

  _Wallet call(
      {required UniqueId id,
      required String walletId,
      Name? name,
      required double balance,
      required String address,
      required String mnemonic}) {
    return _Wallet(
      id: id,
      walletId: walletId,
      name: name,
      balance: balance,
      address: address,
      mnemonic: mnemonic,
    );
  }
}

/// @nodoc
const $Wallet = _$WalletTearOff();

/// @nodoc
mixin _$Wallet {
  UniqueId get id => throw _privateConstructorUsedError;
  String get walletId => throw _privateConstructorUsedError;
  Name? get name => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get mnemonic => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletCopyWith<Wallet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCopyWith<$Res> {
  factory $WalletCopyWith(Wallet value, $Res Function(Wallet) then) =
      _$WalletCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String walletId,
      Name? name,
      double balance,
      String address,
      String mnemonic});
}

/// @nodoc
class _$WalletCopyWithImpl<$Res> implements $WalletCopyWith<$Res> {
  _$WalletCopyWithImpl(this._value, this._then);

  final Wallet _value;
  // ignore: unused_field
  final $Res Function(Wallet) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? walletId = freezed,
    Object? name = freezed,
    Object? balance = freezed,
    Object? address = freezed,
    Object? mnemonic = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      walletId: walletId == freezed
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WalletCopyWith<$Res> implements $WalletCopyWith<$Res> {
  factory _$WalletCopyWith(_Wallet value, $Res Function(_Wallet) then) =
      __$WalletCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String walletId,
      Name? name,
      double balance,
      String address,
      String mnemonic});
}

/// @nodoc
class __$WalletCopyWithImpl<$Res> extends _$WalletCopyWithImpl<$Res>
    implements _$WalletCopyWith<$Res> {
  __$WalletCopyWithImpl(_Wallet _value, $Res Function(_Wallet) _then)
      : super(_value, (v) => _then(v as _Wallet));

  @override
  _Wallet get _value => super._value as _Wallet;

  @override
  $Res call({
    Object? id = freezed,
    Object? walletId = freezed,
    Object? name = freezed,
    Object? balance = freezed,
    Object? address = freezed,
    Object? mnemonic = freezed,
  }) {
    return _then(_Wallet(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      walletId: walletId == freezed
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_Wallet extends _Wallet {
  const _$_Wallet(
      {required this.id,
      required this.walletId,
      this.name,
      required this.balance,
      required this.address,
      required this.mnemonic})
      : super._();

  @override
  final UniqueId id;
  @override
  final String walletId;
  @override
  final Name? name;
  @override
  final double balance;
  @override
  final String address;
  @override
  final String mnemonic;

  @override
  String toString() {
    return 'Wallet(id: $id, walletId: $walletId, name: $name, balance: $balance, address: $address, mnemonic: $mnemonic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Wallet &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.walletId, walletId) ||
                const DeepCollectionEquality()
                    .equals(other.walletId, walletId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.mnemonic, mnemonic) ||
                const DeepCollectionEquality()
                    .equals(other.mnemonic, mnemonic)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(walletId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(mnemonic);

  @JsonKey(ignore: true)
  @override
  _$WalletCopyWith<_Wallet> get copyWith =>
      __$WalletCopyWithImpl<_Wallet>(this, _$identity);
}

abstract class _Wallet extends Wallet {
  const factory _Wallet(
      {required UniqueId id,
      required String walletId,
      Name? name,
      required double balance,
      required String address,
      required String mnemonic}) = _$_Wallet;
  const _Wallet._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get walletId => throw _privateConstructorUsedError;
  @override
  Name? get name => throw _privateConstructorUsedError;
  @override
  double get balance => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get mnemonic => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletCopyWith<_Wallet> get copyWith => throw _privateConstructorUsedError;
}
