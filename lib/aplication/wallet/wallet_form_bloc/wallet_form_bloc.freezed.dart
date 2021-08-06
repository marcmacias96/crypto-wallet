// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wallet_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalletFormEventTearOff {
  const _$WalletFormEventTearOff();

  Initialized initialized({bool? isNew}) {
    return Initialized(
      isNew: isNew,
    );
  }

  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

  IdWalletChanged idWalletChanged(String walletId) {
    return IdWalletChanged(
      walletId,
    );
  }

  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

  CreateWallet createWallet() {
    return const CreateWallet();
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $WalletFormEvent = _$WalletFormEventTearOff();

/// @nodoc
mixin _$WalletFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isNew) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String walletId) idWalletChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() createWallet,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isNew)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String walletId)? idWalletChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? createWallet,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdWalletChanged value) idWalletChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdWalletChanged value)? idWalletChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletFormEventCopyWith<$Res> {
  factory $WalletFormEventCopyWith(
          WalletFormEvent value, $Res Function(WalletFormEvent) then) =
      _$WalletFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletFormEventCopyWithImpl<$Res>
    implements $WalletFormEventCopyWith<$Res> {
  _$WalletFormEventCopyWithImpl(this._value, this._then);

  final WalletFormEvent _value;
  // ignore: unused_field
  final $Res Function(WalletFormEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  $Res call({bool? isNew});
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$WalletFormEventCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object? isNew = freezed,
  }) {
    return _then(Initialized(
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
class _$Initialized with DiagnosticableTreeMixin implements Initialized {
  const _$Initialized({this.isNew});

  @override
  final bool? isNew;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletFormEvent.initialized(isNew: $isNew)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletFormEvent.initialized'))
      ..add(DiagnosticsProperty('isNew', isNew));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initialized &&
            (identical(other.isNew, isNew) ||
                const DeepCollectionEquality().equals(other.isNew, isNew)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isNew);

  @JsonKey(ignore: true)
  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isNew) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String walletId) idWalletChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() createWallet,
    required TResult Function() saved,
  }) {
    return initialized(isNew);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isNew)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String walletId)? idWalletChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? createWallet,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(isNew);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdWalletChanged value) idWalletChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdWalletChanged value)? idWalletChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements WalletFormEvent {
  const factory Initialized({bool? isNew}) = _$Initialized;

  bool? get isNew => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitializedCopyWith<Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    extends _$WalletFormEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$NameChanged with DiagnosticableTreeMixin implements NameChanged {
  const _$NameChanged(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletFormEvent.nameChanged(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletFormEvent.nameChanged'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isNew) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String walletId) idWalletChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() createWallet,
    required TResult Function() saved,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isNew)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String walletId)? idWalletChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? createWallet,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdWalletChanged value) idWalletChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(_Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdWalletChanged value)? idWalletChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements WalletFormEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdWalletChangedCopyWith<$Res> {
  factory $IdWalletChangedCopyWith(
          IdWalletChanged value, $Res Function(IdWalletChanged) then) =
      _$IdWalletChangedCopyWithImpl<$Res>;
  $Res call({String walletId});
}

/// @nodoc
class _$IdWalletChangedCopyWithImpl<$Res>
    extends _$WalletFormEventCopyWithImpl<$Res>
    implements $IdWalletChangedCopyWith<$Res> {
  _$IdWalletChangedCopyWithImpl(
      IdWalletChanged _value, $Res Function(IdWalletChanged) _then)
      : super(_value, (v) => _then(v as IdWalletChanged));

  @override
  IdWalletChanged get _value => super._value as IdWalletChanged;

  @override
  $Res call({
    Object? walletId = freezed,
  }) {
    return _then(IdWalletChanged(
      walletId == freezed
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$IdWalletChanged
    with DiagnosticableTreeMixin
    implements IdWalletChanged {
  const _$IdWalletChanged(this.walletId);

  @override
  final String walletId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletFormEvent.idWalletChanged(walletId: $walletId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletFormEvent.idWalletChanged'))
      ..add(DiagnosticsProperty('walletId', walletId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IdWalletChanged &&
            (identical(other.walletId, walletId) ||
                const DeepCollectionEquality()
                    .equals(other.walletId, walletId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(walletId);

  @JsonKey(ignore: true)
  @override
  $IdWalletChangedCopyWith<IdWalletChanged> get copyWith =>
      _$IdWalletChangedCopyWithImpl<IdWalletChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isNew) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String walletId) idWalletChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() createWallet,
    required TResult Function() saved,
  }) {
    return idWalletChanged(walletId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isNew)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String walletId)? idWalletChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? createWallet,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (idWalletChanged != null) {
      return idWalletChanged(walletId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdWalletChanged value) idWalletChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(_Saved value) saved,
  }) {
    return idWalletChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdWalletChanged value)? idWalletChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (idWalletChanged != null) {
      return idWalletChanged(this);
    }
    return orElse();
  }
}

abstract class IdWalletChanged implements WalletFormEvent {
  const factory IdWalletChanged(String walletId) = _$IdWalletChanged;

  String get walletId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdWalletChangedCopyWith<IdWalletChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$WalletFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged
    with DiagnosticableTreeMixin
    implements PasswordChanged {
  const _$PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletFormEvent.passwordChanged(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletFormEvent.passwordChanged'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isNew) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String walletId) idWalletChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() createWallet,
    required TResult Function() saved,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isNew)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String walletId)? idWalletChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? createWallet,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdWalletChanged value) idWalletChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(_Saved value) saved,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdWalletChanged value)? idWalletChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements WalletFormEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWalletCopyWith<$Res> {
  factory $CreateWalletCopyWith(
          CreateWallet value, $Res Function(CreateWallet) then) =
      _$CreateWalletCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateWalletCopyWithImpl<$Res>
    extends _$WalletFormEventCopyWithImpl<$Res>
    implements $CreateWalletCopyWith<$Res> {
  _$CreateWalletCopyWithImpl(
      CreateWallet _value, $Res Function(CreateWallet) _then)
      : super(_value, (v) => _then(v as CreateWallet));

  @override
  CreateWallet get _value => super._value as CreateWallet;
}

/// @nodoc
class _$CreateWallet with DiagnosticableTreeMixin implements CreateWallet {
  const _$CreateWallet();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletFormEvent.createWallet()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletFormEvent.createWallet'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateWallet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isNew) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String walletId) idWalletChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() createWallet,
    required TResult Function() saved,
  }) {
    return createWallet();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isNew)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String walletId)? idWalletChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? createWallet,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (createWallet != null) {
      return createWallet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdWalletChanged value) idWalletChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(_Saved value) saved,
  }) {
    return createWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdWalletChanged value)? idWalletChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (createWallet != null) {
      return createWallet(this);
    }
    return orElse();
  }
}

abstract class CreateWallet implements WalletFormEvent {
  const factory CreateWallet() = _$CreateWallet;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$WalletFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc
class _$_Saved with DiagnosticableTreeMixin implements _Saved {
  const _$_Saved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletFormEvent.saved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WalletFormEvent.saved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isNew) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String walletId) idWalletChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() createWallet,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isNew)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String walletId)? idWalletChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? createWallet,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdWalletChanged value) idWalletChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdWalletChanged value)? idWalletChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements WalletFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$WalletFormStateTearOff {
  const _$WalletFormStateTearOff();

  _WalletFormState call(
      {required Wallet wallet,
      required bool isEditing,
      required bool isLoading,
      required bool isSaving,
      required bool isNew,
      required bool showErrorMessages,
      required Option<Either<FirestoreFailure, Unit>>
          saveFailureOrSuccessOption}) {
    return _WalletFormState(
      wallet: wallet,
      isEditing: isEditing,
      isLoading: isLoading,
      isSaving: isSaving,
      isNew: isNew,
      showErrorMessages: showErrorMessages,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $WalletFormState = _$WalletFormStateTearOff();

/// @nodoc
mixin _$WalletFormState {
  Wallet get wallet => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletFormStateCopyWith<WalletFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletFormStateCopyWith<$Res> {
  factory $WalletFormStateCopyWith(
          WalletFormState value, $Res Function(WalletFormState) then) =
      _$WalletFormStateCopyWithImpl<$Res>;
  $Res call(
      {Wallet wallet,
      bool isEditing,
      bool isLoading,
      bool isSaving,
      bool isNew,
      bool showErrorMessages,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSuccessOption});

  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class _$WalletFormStateCopyWithImpl<$Res>
    implements $WalletFormStateCopyWith<$Res> {
  _$WalletFormStateCopyWithImpl(this._value, this._then);

  final WalletFormState _value;
  // ignore: unused_field
  final $Res Function(WalletFormState) _then;

  @override
  $Res call({
    Object? wallet = freezed,
    Object? isEditing = freezed,
    Object? isLoading = freezed,
    Object? isSaving = freezed,
    Object? isNew = freezed,
    Object? showErrorMessages = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirestoreFailure, Unit>>,
    ));
  }

  @override
  $WalletCopyWith<$Res> get wallet {
    return $WalletCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc
abstract class _$WalletFormStateCopyWith<$Res>
    implements $WalletFormStateCopyWith<$Res> {
  factory _$WalletFormStateCopyWith(
          _WalletFormState value, $Res Function(_WalletFormState) then) =
      __$WalletFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Wallet wallet,
      bool isEditing,
      bool isLoading,
      bool isSaving,
      bool isNew,
      bool showErrorMessages,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class __$WalletFormStateCopyWithImpl<$Res>
    extends _$WalletFormStateCopyWithImpl<$Res>
    implements _$WalletFormStateCopyWith<$Res> {
  __$WalletFormStateCopyWithImpl(
      _WalletFormState _value, $Res Function(_WalletFormState) _then)
      : super(_value, (v) => _then(v as _WalletFormState));

  @override
  _WalletFormState get _value => super._value as _WalletFormState;

  @override
  $Res call({
    Object? wallet = freezed,
    Object? isEditing = freezed,
    Object? isLoading = freezed,
    Object? isSaving = freezed,
    Object? isNew = freezed,
    Object? showErrorMessages = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_WalletFormState(
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirestoreFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_WalletFormState
    with DiagnosticableTreeMixin
    implements _WalletFormState {
  const _$_WalletFormState(
      {required this.wallet,
      required this.isEditing,
      required this.isLoading,
      required this.isSaving,
      required this.isNew,
      required this.showErrorMessages,
      required this.saveFailureOrSuccessOption});

  @override
  final Wallet wallet;
  @override
  final bool isEditing;
  @override
  final bool isLoading;
  @override
  final bool isSaving;
  @override
  final bool isNew;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<FirestoreFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletFormState(wallet: $wallet, isEditing: $isEditing, isLoading: $isLoading, isSaving: $isSaving, isNew: $isNew, showErrorMessages: $showErrorMessages, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletFormState'))
      ..add(DiagnosticsProperty('wallet', wallet))
      ..add(DiagnosticsProperty('isEditing', isEditing))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty('isNew', isNew))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletFormState &&
            (identical(other.wallet, wallet) ||
                const DeepCollectionEquality().equals(other.wallet, wallet)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isNew, isNew) ||
                const DeepCollectionEquality().equals(other.isNew, isNew)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(wallet) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isNew) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$WalletFormStateCopyWith<_WalletFormState> get copyWith =>
      __$WalletFormStateCopyWithImpl<_WalletFormState>(this, _$identity);
}

abstract class _WalletFormState implements WalletFormState {
  const factory _WalletFormState(
      {required Wallet wallet,
      required bool isEditing,
      required bool isLoading,
      required bool isSaving,
      required bool isNew,
      required bool showErrorMessages,
      required Option<Either<FirestoreFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_WalletFormState;

  @override
  Wallet get wallet => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  bool get isNew => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletFormStateCopyWith<_WalletFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
