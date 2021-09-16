// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'change_password_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChangePasswordFormEventTearOff {
  const _$ChangePasswordFormEventTearOff();

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  NewPasswordChanged newpasswordChanged(String newpasswordStr) {
    return NewPasswordChanged(
      newpasswordStr,
    );
  }

  ConfirmPasswordChanged confirmpasswordChanged(String confirmpasswordStr) {
    return ConfirmPasswordChanged(
      confirmpasswordStr,
    );
  }

  ChangePasswordPressed changePasswordPressed() {
    return const ChangePasswordPressed();
  }
}

/// @nodoc
const $ChangePasswordFormEvent = _$ChangePasswordFormEventTearOff();

/// @nodoc
mixin _$ChangePasswordFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String newpasswordStr) newpasswordChanged,
    required TResult Function(String confirmpasswordStr) confirmpasswordChanged,
    required TResult Function() changePasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String newpasswordStr)? newpasswordChanged,
    TResult Function(String confirmpasswordStr)? confirmpasswordChanged,
    TResult Function()? changePasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NewPasswordChanged value) newpasswordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmpasswordChanged,
    required TResult Function(ChangePasswordPressed value)
        changePasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NewPasswordChanged value)? newpasswordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult Function(ChangePasswordPressed value)? changePasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordFormEventCopyWith<$Res> {
  factory $ChangePasswordFormEventCopyWith(ChangePasswordFormEvent value,
          $Res Function(ChangePasswordFormEvent) then) =
      _$ChangePasswordFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordFormEventCopyWithImpl<$Res>
    implements $ChangePasswordFormEventCopyWith<$Res> {
  _$ChangePasswordFormEventCopyWithImpl(this._value, this._then);

  final ChangePasswordFormEvent _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordFormEvent) _then;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'ChangePasswordFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String newpasswordStr) newpasswordChanged,
    required TResult Function(String confirmpasswordStr) confirmpasswordChanged,
    required TResult Function() changePasswordPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String newpasswordStr)? newpasswordChanged,
    TResult Function(String confirmpasswordStr)? confirmpasswordChanged,
    TResult Function()? changePasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NewPasswordChanged value) newpasswordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmpasswordChanged,
    required TResult Function(ChangePasswordPressed value)
        changePasswordPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NewPasswordChanged value)? newpasswordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult Function(ChangePasswordPressed value)? changePasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements ChangePasswordFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPasswordChangedCopyWith<$Res> {
  factory $NewPasswordChangedCopyWith(
          NewPasswordChanged value, $Res Function(NewPasswordChanged) then) =
      _$NewPasswordChangedCopyWithImpl<$Res>;
  $Res call({String newpasswordStr});
}

/// @nodoc
class _$NewPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordFormEventCopyWithImpl<$Res>
    implements $NewPasswordChangedCopyWith<$Res> {
  _$NewPasswordChangedCopyWithImpl(
      NewPasswordChanged _value, $Res Function(NewPasswordChanged) _then)
      : super(_value, (v) => _then(v as NewPasswordChanged));

  @override
  NewPasswordChanged get _value => super._value as NewPasswordChanged;

  @override
  $Res call({
    Object? newpasswordStr = freezed,
  }) {
    return _then(NewPasswordChanged(
      newpasswordStr == freezed
          ? _value.newpasswordStr
          : newpasswordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$NewPasswordChanged implements NewPasswordChanged {
  const _$NewPasswordChanged(this.newpasswordStr);

  @override
  final String newpasswordStr;

  @override
  String toString() {
    return 'ChangePasswordFormEvent.newpasswordChanged(newpasswordStr: $newpasswordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewPasswordChanged &&
            (identical(other.newpasswordStr, newpasswordStr) ||
                const DeepCollectionEquality()
                    .equals(other.newpasswordStr, newpasswordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newpasswordStr);

  @JsonKey(ignore: true)
  @override
  $NewPasswordChangedCopyWith<NewPasswordChanged> get copyWith =>
      _$NewPasswordChangedCopyWithImpl<NewPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String newpasswordStr) newpasswordChanged,
    required TResult Function(String confirmpasswordStr) confirmpasswordChanged,
    required TResult Function() changePasswordPressed,
  }) {
    return newpasswordChanged(newpasswordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String newpasswordStr)? newpasswordChanged,
    TResult Function(String confirmpasswordStr)? confirmpasswordChanged,
    TResult Function()? changePasswordPressed,
    required TResult orElse(),
  }) {
    if (newpasswordChanged != null) {
      return newpasswordChanged(newpasswordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NewPasswordChanged value) newpasswordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmpasswordChanged,
    required TResult Function(ChangePasswordPressed value)
        changePasswordPressed,
  }) {
    return newpasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NewPasswordChanged value)? newpasswordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult Function(ChangePasswordPressed value)? changePasswordPressed,
    required TResult orElse(),
  }) {
    if (newpasswordChanged != null) {
      return newpasswordChanged(this);
    }
    return orElse();
  }
}

abstract class NewPasswordChanged implements ChangePasswordFormEvent {
  const factory NewPasswordChanged(String newpasswordStr) =
      _$NewPasswordChanged;

  String get newpasswordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewPasswordChangedCopyWith<NewPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPasswordChangedCopyWith<$Res> {
  factory $ConfirmPasswordChangedCopyWith(ConfirmPasswordChanged value,
          $Res Function(ConfirmPasswordChanged) then) =
      _$ConfirmPasswordChangedCopyWithImpl<$Res>;
  $Res call({String confirmpasswordStr});
}

/// @nodoc
class _$ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordFormEventCopyWithImpl<$Res>
    implements $ConfirmPasswordChangedCopyWith<$Res> {
  _$ConfirmPasswordChangedCopyWithImpl(ConfirmPasswordChanged _value,
      $Res Function(ConfirmPasswordChanged) _then)
      : super(_value, (v) => _then(v as ConfirmPasswordChanged));

  @override
  ConfirmPasswordChanged get _value => super._value as ConfirmPasswordChanged;

  @override
  $Res call({
    Object? confirmpasswordStr = freezed,
  }) {
    return _then(ConfirmPasswordChanged(
      confirmpasswordStr == freezed
          ? _value.confirmpasswordStr
          : confirmpasswordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$ConfirmPasswordChanged implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChanged(this.confirmpasswordStr);

  @override
  final String confirmpasswordStr;

  @override
  String toString() {
    return 'ChangePasswordFormEvent.confirmpasswordChanged(confirmpasswordStr: $confirmpasswordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmPasswordChanged &&
            (identical(other.confirmpasswordStr, confirmpasswordStr) ||
                const DeepCollectionEquality()
                    .equals(other.confirmpasswordStr, confirmpasswordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(confirmpasswordStr);

  @JsonKey(ignore: true)
  @override
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith =>
      _$ConfirmPasswordChangedCopyWithImpl<ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String newpasswordStr) newpasswordChanged,
    required TResult Function(String confirmpasswordStr) confirmpasswordChanged,
    required TResult Function() changePasswordPressed,
  }) {
    return confirmpasswordChanged(confirmpasswordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String newpasswordStr)? newpasswordChanged,
    TResult Function(String confirmpasswordStr)? confirmpasswordChanged,
    TResult Function()? changePasswordPressed,
    required TResult orElse(),
  }) {
    if (confirmpasswordChanged != null) {
      return confirmpasswordChanged(confirmpasswordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NewPasswordChanged value) newpasswordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmpasswordChanged,
    required TResult Function(ChangePasswordPressed value)
        changePasswordPressed,
  }) {
    return confirmpasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NewPasswordChanged value)? newpasswordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult Function(ChangePasswordPressed value)? changePasswordPressed,
    required TResult orElse(),
  }) {
    if (confirmpasswordChanged != null) {
      return confirmpasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements ChangePasswordFormEvent {
  const factory ConfirmPasswordChanged(String confirmpasswordStr) =
      _$ConfirmPasswordChanged;

  String get confirmpasswordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordPressedCopyWith<$Res> {
  factory $ChangePasswordPressedCopyWith(ChangePasswordPressed value,
          $Res Function(ChangePasswordPressed) then) =
      _$ChangePasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordPressedCopyWithImpl<$Res>
    extends _$ChangePasswordFormEventCopyWithImpl<$Res>
    implements $ChangePasswordPressedCopyWith<$Res> {
  _$ChangePasswordPressedCopyWithImpl(
      ChangePasswordPressed _value, $Res Function(ChangePasswordPressed) _then)
      : super(_value, (v) => _then(v as ChangePasswordPressed));

  @override
  ChangePasswordPressed get _value => super._value as ChangePasswordPressed;
}

/// @nodoc
class _$ChangePasswordPressed implements ChangePasswordPressed {
  const _$ChangePasswordPressed();

  @override
  String toString() {
    return 'ChangePasswordFormEvent.changePasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChangePasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String newpasswordStr) newpasswordChanged,
    required TResult Function(String confirmpasswordStr) confirmpasswordChanged,
    required TResult Function() changePasswordPressed,
  }) {
    return changePasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String newpasswordStr)? newpasswordChanged,
    TResult Function(String confirmpasswordStr)? confirmpasswordChanged,
    TResult Function()? changePasswordPressed,
    required TResult orElse(),
  }) {
    if (changePasswordPressed != null) {
      return changePasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NewPasswordChanged value) newpasswordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmpasswordChanged,
    required TResult Function(ChangePasswordPressed value)
        changePasswordPressed,
  }) {
    return changePasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NewPasswordChanged value)? newpasswordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult Function(ChangePasswordPressed value)? changePasswordPressed,
    required TResult orElse(),
  }) {
    if (changePasswordPressed != null) {
      return changePasswordPressed(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordPressed implements ChangePasswordFormEvent {
  const factory ChangePasswordPressed() = _$ChangePasswordPressed;
}

/// @nodoc
class _$ChangePasswordFormStateTearOff {
  const _$ChangePasswordFormStateTearOff();

  _ChangePasswordFormState call(
      {required Password password,
      required Password newpassword,
      required Password confirmpassword,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, AccountType>>
          changeFailureOrSuccessOption}) {
    return _ChangePasswordFormState(
      password: password,
      newpassword: newpassword,
      confirmpassword: confirmpassword,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      changeFailureOrSuccessOption: changeFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ChangePasswordFormState = _$ChangePasswordFormStateTearOff();

/// @nodoc
mixin _$ChangePasswordFormState {
  Password get password => throw _privateConstructorUsedError;
  Password get newpassword => throw _privateConstructorUsedError;
  Password get confirmpassword => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, AccountType>> get changeFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordFormStateCopyWith<ChangePasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordFormStateCopyWith<$Res> {
  factory $ChangePasswordFormStateCopyWith(ChangePasswordFormState value,
          $Res Function(ChangePasswordFormState) then) =
      _$ChangePasswordFormStateCopyWithImpl<$Res>;
  $Res call(
      {Password password,
      Password newpassword,
      Password confirmpassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, AccountType>> changeFailureOrSuccessOption});
}

/// @nodoc
class _$ChangePasswordFormStateCopyWithImpl<$Res>
    implements $ChangePasswordFormStateCopyWith<$Res> {
  _$ChangePasswordFormStateCopyWithImpl(this._value, this._then);

  final ChangePasswordFormState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordFormState) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? newpassword = freezed,
    Object? confirmpassword = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? changeFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      newpassword: newpassword == freezed
          ? _value.newpassword
          : newpassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmpassword: confirmpassword == freezed
          ? _value.confirmpassword
          : confirmpassword // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      changeFailureOrSuccessOption: changeFailureOrSuccessOption == freezed
          ? _value.changeFailureOrSuccessOption
          : changeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, AccountType>>,
    ));
  }
}

/// @nodoc
abstract class _$ChangePasswordFormStateCopyWith<$Res>
    implements $ChangePasswordFormStateCopyWith<$Res> {
  factory _$ChangePasswordFormStateCopyWith(_ChangePasswordFormState value,
          $Res Function(_ChangePasswordFormState) then) =
      __$ChangePasswordFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Password password,
      Password newpassword,
      Password confirmpassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, AccountType>> changeFailureOrSuccessOption});
}

/// @nodoc
class __$ChangePasswordFormStateCopyWithImpl<$Res>
    extends _$ChangePasswordFormStateCopyWithImpl<$Res>
    implements _$ChangePasswordFormStateCopyWith<$Res> {
  __$ChangePasswordFormStateCopyWithImpl(_ChangePasswordFormState _value,
      $Res Function(_ChangePasswordFormState) _then)
      : super(_value, (v) => _then(v as _ChangePasswordFormState));

  @override
  _ChangePasswordFormState get _value =>
      super._value as _ChangePasswordFormState;

  @override
  $Res call({
    Object? password = freezed,
    Object? newpassword = freezed,
    Object? confirmpassword = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? changeFailureOrSuccessOption = freezed,
  }) {
    return _then(_ChangePasswordFormState(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      newpassword: newpassword == freezed
          ? _value.newpassword
          : newpassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmpassword: confirmpassword == freezed
          ? _value.confirmpassword
          : confirmpassword // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      changeFailureOrSuccessOption: changeFailureOrSuccessOption == freezed
          ? _value.changeFailureOrSuccessOption
          : changeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, AccountType>>,
    ));
  }
}

/// @nodoc
class _$_ChangePasswordFormState implements _ChangePasswordFormState {
  const _$_ChangePasswordFormState(
      {required this.password,
      required this.newpassword,
      required this.confirmpassword,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.changeFailureOrSuccessOption});

  @override
  final Password password;
  @override
  final Password newpassword;
  @override
  final Password confirmpassword;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, AccountType>> changeFailureOrSuccessOption;

  @override
  String toString() {
    return 'ChangePasswordFormState(password: $password, newpassword: $newpassword, confirmpassword: $confirmpassword, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, changeFailureOrSuccessOption: $changeFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePasswordFormState &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.newpassword, newpassword) ||
                const DeepCollectionEquality()
                    .equals(other.newpassword, newpassword)) &&
            (identical(other.confirmpassword, confirmpassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmpassword, confirmpassword)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.changeFailureOrSuccessOption,
                    changeFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.changeFailureOrSuccessOption,
                    changeFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(newpassword) ^
      const DeepCollectionEquality().hash(confirmpassword) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(changeFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordFormStateCopyWith<_ChangePasswordFormState> get copyWith =>
      __$ChangePasswordFormStateCopyWithImpl<_ChangePasswordFormState>(
          this, _$identity);
}

abstract class _ChangePasswordFormState implements ChangePasswordFormState {
  const factory _ChangePasswordFormState(
      {required Password password,
      required Password newpassword,
      required Password confirmpassword,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, AccountType>>
          changeFailureOrSuccessOption}) = _$_ChangePasswordFormState;

  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  Password get newpassword => throw _privateConstructorUsedError;
  @override
  Password get confirmpassword => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, AccountType>> get changeFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChangePasswordFormStateCopyWith<_ChangePasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
