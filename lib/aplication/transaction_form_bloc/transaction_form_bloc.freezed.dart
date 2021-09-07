// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionFormEventTearOff {
  const _$TransactionFormEventTearOff();

  SetContact setContact(Contact contact) {
    return SetContact(
      contact,
    );
  }

  SendBitcoin sendBitcoin() {
    return const SendBitcoin();
  }
}

/// @nodoc
const $TransactionFormEvent = _$TransactionFormEventTearOff();

/// @nodoc
mixin _$TransactionFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) setContact,
    required TResult Function() sendBitcoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? setContact,
    TResult Function()? sendBitcoin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetContact value) setContact,
    required TResult Function(SendBitcoin value) sendBitcoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetContact value)? setContact,
    TResult Function(SendBitcoin value)? sendBitcoin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionFormEventCopyWith<$Res> {
  factory $TransactionFormEventCopyWith(TransactionFormEvent value,
          $Res Function(TransactionFormEvent) then) =
      _$TransactionFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionFormEventCopyWithImpl<$Res>
    implements $TransactionFormEventCopyWith<$Res> {
  _$TransactionFormEventCopyWithImpl(this._value, this._then);

  final TransactionFormEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionFormEvent) _then;
}

/// @nodoc
abstract class $SetContactCopyWith<$Res> {
  factory $SetContactCopyWith(
          SetContact value, $Res Function(SetContact) then) =
      _$SetContactCopyWithImpl<$Res>;
  $Res call({Contact contact});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$SetContactCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res>
    implements $SetContactCopyWith<$Res> {
  _$SetContactCopyWithImpl(SetContact _value, $Res Function(SetContact) _then)
      : super(_value, (v) => _then(v as SetContact));

  @override
  SetContact get _value => super._value as SetContact;

  @override
  $Res call({
    Object? contact = freezed,
  }) {
    return _then(SetContact(
      contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }

  @override
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc
class _$SetContact with DiagnosticableTreeMixin implements SetContact {
  const _$SetContact(this.contact);

  @override
  final Contact contact;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionFormEvent.setContact(contact: $contact)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionFormEvent.setContact'))
      ..add(DiagnosticsProperty('contact', contact));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetContact &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality().equals(other.contact, contact)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contact);

  @JsonKey(ignore: true)
  @override
  $SetContactCopyWith<SetContact> get copyWith =>
      _$SetContactCopyWithImpl<SetContact>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) setContact,
    required TResult Function() sendBitcoin,
  }) {
    return setContact(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? setContact,
    TResult Function()? sendBitcoin,
    required TResult orElse(),
  }) {
    if (setContact != null) {
      return setContact(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetContact value) setContact,
    required TResult Function(SendBitcoin value) sendBitcoin,
  }) {
    return setContact(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetContact value)? setContact,
    TResult Function(SendBitcoin value)? sendBitcoin,
    required TResult orElse(),
  }) {
    if (setContact != null) {
      return setContact(this);
    }
    return orElse();
  }
}

abstract class SetContact implements TransactionFormEvent {
  const factory SetContact(Contact contact) = _$SetContact;

  Contact get contact => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetContactCopyWith<SetContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendBitcoinCopyWith<$Res> {
  factory $SendBitcoinCopyWith(
          SendBitcoin value, $Res Function(SendBitcoin) then) =
      _$SendBitcoinCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendBitcoinCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res>
    implements $SendBitcoinCopyWith<$Res> {
  _$SendBitcoinCopyWithImpl(
      SendBitcoin _value, $Res Function(SendBitcoin) _then)
      : super(_value, (v) => _then(v as SendBitcoin));

  @override
  SendBitcoin get _value => super._value as SendBitcoin;
}

/// @nodoc
class _$SendBitcoin with DiagnosticableTreeMixin implements SendBitcoin {
  const _$SendBitcoin();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionFormEvent.sendBitcoin()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionFormEvent.sendBitcoin'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendBitcoin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) setContact,
    required TResult Function() sendBitcoin,
  }) {
    return sendBitcoin();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? setContact,
    TResult Function()? sendBitcoin,
    required TResult orElse(),
  }) {
    if (sendBitcoin != null) {
      return sendBitcoin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetContact value) setContact,
    required TResult Function(SendBitcoin value) sendBitcoin,
  }) {
    return sendBitcoin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetContact value)? setContact,
    TResult Function(SendBitcoin value)? sendBitcoin,
    required TResult orElse(),
  }) {
    if (sendBitcoin != null) {
      return sendBitcoin(this);
    }
    return orElse();
  }
}

abstract class SendBitcoin implements TransactionFormEvent {
  const factory SendBitcoin() = _$SendBitcoin;
}

/// @nodoc
class _$TransactionFormStateTearOff {
  const _$TransactionFormStateTearOff();

  _TransactionFormState call(
      {required bool isLoading,
      required Option<Either<TransactionFailure, Unit>> failureOrSuccess,
      Contact? contact,
      required double value}) {
    return _TransactionFormState(
      isLoading: isLoading,
      failureOrSuccess: failureOrSuccess,
      contact: contact,
      value: value,
    );
  }
}

/// @nodoc
const $TransactionFormState = _$TransactionFormStateTearOff();

/// @nodoc
mixin _$TransactionFormState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<TransactionFailure, Unit>> get failureOrSuccess =>
      throw _privateConstructorUsedError;
  Contact? get contact => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionFormStateCopyWith<TransactionFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionFormStateCopyWith<$Res> {
  factory $TransactionFormStateCopyWith(TransactionFormState value,
          $Res Function(TransactionFormState) then) =
      _$TransactionFormStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<TransactionFailure, Unit>> failureOrSuccess,
      Contact? contact,
      double value});

  $ContactCopyWith<$Res>? get contact;
}

/// @nodoc
class _$TransactionFormStateCopyWithImpl<$Res>
    implements $TransactionFormStateCopyWith<$Res> {
  _$TransactionFormStateCopyWithImpl(this._value, this._then);

  final TransactionFormState _value;
  // ignore: unused_field
  final $Res Function(TransactionFormState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? failureOrSuccess = freezed,
    Object? contact = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<TransactionFailure, Unit>>,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionFormStateCopyWith<$Res>
    implements $TransactionFormStateCopyWith<$Res> {
  factory _$TransactionFormStateCopyWith(_TransactionFormState value,
          $Res Function(_TransactionFormState) then) =
      __$TransactionFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<TransactionFailure, Unit>> failureOrSuccess,
      Contact? contact,
      double value});

  @override
  $ContactCopyWith<$Res>? get contact;
}

/// @nodoc
class __$TransactionFormStateCopyWithImpl<$Res>
    extends _$TransactionFormStateCopyWithImpl<$Res>
    implements _$TransactionFormStateCopyWith<$Res> {
  __$TransactionFormStateCopyWithImpl(
      _TransactionFormState _value, $Res Function(_TransactionFormState) _then)
      : super(_value, (v) => _then(v as _TransactionFormState));

  @override
  _TransactionFormState get _value => super._value as _TransactionFormState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? failureOrSuccess = freezed,
    Object? contact = freezed,
    Object? value = freezed,
  }) {
    return _then(_TransactionFormState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<TransactionFailure, Unit>>,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
class _$_TransactionFormState
    with DiagnosticableTreeMixin
    implements _TransactionFormState {
  const _$_TransactionFormState(
      {required this.isLoading,
      required this.failureOrSuccess,
      this.contact,
      required this.value});

  @override
  final bool isLoading;
  @override
  final Option<Either<TransactionFailure, Unit>> failureOrSuccess;
  @override
  final Contact? contact;
  @override
  final double value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionFormState(isLoading: $isLoading, failureOrSuccess: $failureOrSuccess, contact: $contact, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionFormState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('failureOrSuccess', failureOrSuccess))
      ..add(DiagnosticsProperty('contact', contact))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionFormState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSuccess, failureOrSuccess)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(failureOrSuccess) ^
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$TransactionFormStateCopyWith<_TransactionFormState> get copyWith =>
      __$TransactionFormStateCopyWithImpl<_TransactionFormState>(
          this, _$identity);
}

abstract class _TransactionFormState implements TransactionFormState {
  const factory _TransactionFormState(
      {required bool isLoading,
      required Option<Either<TransactionFailure, Unit>> failureOrSuccess,
      Contact? contact,
      required double value}) = _$_TransactionFormState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<Either<TransactionFailure, Unit>> get failureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Contact? get contact => throw _privateConstructorUsedError;
  @override
  double get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionFormStateCopyWith<_TransactionFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
