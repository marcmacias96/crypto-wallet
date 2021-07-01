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

  Initialized initialized() {
    return const Initialized();
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

  Saved saved() {
    return const Saved();
  }
}

/// @nodoc
const $WalletFormEvent = _$WalletFormEventTearOff();

/// @nodoc
mixin _$WalletFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String walletId) idWalletChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String walletId)? idWalletChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdWalletChanged value) idWalletChanged,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdWalletChanged value)? idWalletChanged,
    TResult Function(Saved value)? saved,
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
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized();

  @override
  String toString() {
    return 'WalletFormEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String walletId) idWalletChanged,
    required TResult Function() saved,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String walletId)? idWalletChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdWalletChanged value) idWalletChanged,
    required TResult Function(Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdWalletChanged value)? idWalletChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements WalletFormEvent {
  const factory Initialized() = _$Initialized;
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

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'WalletFormEvent.nameChanged(name: $name)';
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
    required TResult Function() initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String walletId) idWalletChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String walletId)? idWalletChanged,
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
    required TResult Function(Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdWalletChanged value)? idWalletChanged,
    TResult Function(Saved value)? saved,
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

class _$IdWalletChanged implements IdWalletChanged {
  const _$IdWalletChanged(this.walletId);

  @override
  final String walletId;

  @override
  String toString() {
    return 'WalletFormEvent.idWalletChanged(walletId: $walletId)';
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
    required TResult Function() initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String walletId) idWalletChanged,
    required TResult Function() saved,
  }) {
    return idWalletChanged(walletId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String walletId)? idWalletChanged,
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
    required TResult Function(Saved value) saved,
  }) {
    return idWalletChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdWalletChanged value)? idWalletChanged,
    TResult Function(Saved value)? saved,
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
abstract class $SavedCopyWith<$Res> {
  factory $SavedCopyWith(Saved value, $Res Function(Saved) then) =
      _$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavedCopyWithImpl<$Res> extends _$WalletFormEventCopyWithImpl<$Res>
    implements $SavedCopyWith<$Res> {
  _$SavedCopyWithImpl(Saved _value, $Res Function(Saved) _then)
      : super(_value, (v) => _then(v as Saved));

  @override
  Saved get _value => super._value as Saved;
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'WalletFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String walletId) idWalletChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String walletId)? idWalletChanged,
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
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdWalletChanged value)? idWalletChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements WalletFormEvent {
  const factory Saved() = _$Saved;
}

/// @nodoc
class _$WalletFormStateTearOff {
  const _$WalletFormStateTearOff();

  _WalletFormState call(
      {required Wallet wallet,
      required bool isEditing,
      required bool isLoading,
      required bool isSaving,
      required bool showErrorMessages,
      required Option<Either<FirestoreFailure, Unit>>
          saveFailureOrSuccessOption}) {
    return _WalletFormState(
      wallet: wallet,
      isEditing: isEditing,
      isLoading: isLoading,
      isSaving: isSaving,
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

class _$_WalletFormState implements _WalletFormState {
  const _$_WalletFormState(
      {required this.wallet,
      required this.isEditing,
      required this.isLoading,
      required this.isSaving,
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
  final bool showErrorMessages;
  @override
  final Option<Either<FirestoreFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'WalletFormState(wallet: $wallet, isEditing: $isEditing, isLoading: $isLoading, isSaving: $isSaving, showErrorMessages: $showErrorMessages, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
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
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletFormStateCopyWith<_WalletFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
