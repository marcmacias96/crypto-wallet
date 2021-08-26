// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'contact_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactFormEventTearOff {
  const _$ContactFormEventTearOff();

  Initialized initialized(Contact contact) {
    return Initialized(
      contact,
    );
  }

  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

  AddressChanged addressChanged(String address) {
    return AddressChanged(
      address,
    );
  }

  Save save() {
    return const Save();
  }

  IsEditing isEditing() {
    return const IsEditing();
  }

  Delete delete(Contact contact) {
    return Delete(
      contact,
    );
  }
}

/// @nodoc
const $ContactFormEvent = _$ContactFormEventTearOff();

/// @nodoc
mixin _$ContactFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function() save,
    required TResult Function() isEditing,
    required TResult Function(Contact contact) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function()? save,
    TResult Function()? isEditing,
    TResult Function(Contact contact)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(Save value) save,
    required TResult Function(IsEditing value) isEditing,
    required TResult Function(Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(Save value)? save,
    TResult Function(IsEditing value)? isEditing,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactFormEventCopyWith<$Res> {
  factory $ContactFormEventCopyWith(
          ContactFormEvent value, $Res Function(ContactFormEvent) then) =
      _$ContactFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactFormEventCopyWithImpl<$Res>
    implements $ContactFormEventCopyWith<$Res> {
  _$ContactFormEventCopyWithImpl(this._value, this._then);

  final ContactFormEvent _value;
  // ignore: unused_field
  final $Res Function(ContactFormEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  $Res call({Contact contact});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$ContactFormEventCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object? contact = freezed,
  }) {
    return _then(Initialized(
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
class _$Initialized implements Initialized {
  const _$Initialized(this.contact);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'ContactFormEvent.initialized(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initialized &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality().equals(other.contact, contact)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contact);

  @JsonKey(ignore: true)
  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function() save,
    required TResult Function() isEditing,
    required TResult Function(Contact contact) delete,
  }) {
    return initialized(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function()? save,
    TResult Function()? isEditing,
    TResult Function(Contact contact)? delete,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(Save value) save,
    required TResult Function(IsEditing value) isEditing,
    required TResult Function(Delete value) delete,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(Save value)? save,
    TResult Function(IsEditing value)? isEditing,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements ContactFormEvent {
  const factory Initialized(Contact contact) = _$Initialized;

  Contact get contact => throw _privateConstructorUsedError;
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
    extends _$ContactFormEventCopyWithImpl<$Res>
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
    return 'ContactFormEvent.nameChanged(name: $name)';
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
    required TResult Function(Contact contact) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function() save,
    required TResult Function() isEditing,
    required TResult Function(Contact contact) delete,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function()? save,
    TResult Function()? isEditing,
    TResult Function(Contact contact)? delete,
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
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(Save value) save,
    required TResult Function(IsEditing value) isEditing,
    required TResult Function(Delete value) delete,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(Save value)? save,
    TResult Function(IsEditing value)? isEditing,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements ContactFormEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressChangedCopyWith<$Res> {
  factory $AddressChangedCopyWith(
          AddressChanged value, $Res Function(AddressChanged) then) =
      _$AddressChangedCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class _$AddressChangedCopyWithImpl<$Res>
    extends _$ContactFormEventCopyWithImpl<$Res>
    implements $AddressChangedCopyWith<$Res> {
  _$AddressChangedCopyWithImpl(
      AddressChanged _value, $Res Function(AddressChanged) _then)
      : super(_value, (v) => _then(v as AddressChanged));

  @override
  AddressChanged get _value => super._value as AddressChanged;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(AddressChanged(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$AddressChanged implements AddressChanged {
  const _$AddressChanged(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'ContactFormEvent.addressChanged(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressChanged &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  $AddressChangedCopyWith<AddressChanged> get copyWith =>
      _$AddressChangedCopyWithImpl<AddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function() save,
    required TResult Function() isEditing,
    required TResult Function(Contact contact) delete,
  }) {
    return addressChanged(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function()? save,
    TResult Function()? isEditing,
    TResult Function(Contact contact)? delete,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(Save value) save,
    required TResult Function(IsEditing value) isEditing,
    required TResult Function(Delete value) delete,
  }) {
    return addressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(Save value)? save,
    TResult Function(IsEditing value)? isEditing,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(this);
    }
    return orElse();
  }
}

abstract class AddressChanged implements ContactFormEvent {
  const factory AddressChanged(String address) = _$AddressChanged;

  String get address => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressChangedCopyWith<AddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveCopyWith<$Res> {
  factory $SaveCopyWith(Save value, $Res Function(Save) then) =
      _$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveCopyWithImpl<$Res> extends _$ContactFormEventCopyWithImpl<$Res>
    implements $SaveCopyWith<$Res> {
  _$SaveCopyWithImpl(Save _value, $Res Function(Save) _then)
      : super(_value, (v) => _then(v as Save));

  @override
  Save get _value => super._value as Save;
}

/// @nodoc
class _$Save implements Save {
  const _$Save();

  @override
  String toString() {
    return 'ContactFormEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function() save,
    required TResult Function() isEditing,
    required TResult Function(Contact contact) delete,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function()? save,
    TResult Function()? isEditing,
    TResult Function(Contact contact)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(Save value) save,
    required TResult Function(IsEditing value) isEditing,
    required TResult Function(Delete value) delete,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(Save value)? save,
    TResult Function(IsEditing value)? isEditing,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class Save implements ContactFormEvent {
  const factory Save() = _$Save;
}

/// @nodoc
abstract class $IsEditingCopyWith<$Res> {
  factory $IsEditingCopyWith(IsEditing value, $Res Function(IsEditing) then) =
      _$IsEditingCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsEditingCopyWithImpl<$Res> extends _$ContactFormEventCopyWithImpl<$Res>
    implements $IsEditingCopyWith<$Res> {
  _$IsEditingCopyWithImpl(IsEditing _value, $Res Function(IsEditing) _then)
      : super(_value, (v) => _then(v as IsEditing));

  @override
  IsEditing get _value => super._value as IsEditing;
}

/// @nodoc
class _$IsEditing implements IsEditing {
  const _$IsEditing();

  @override
  String toString() {
    return 'ContactFormEvent.isEditing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IsEditing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function() save,
    required TResult Function() isEditing,
    required TResult Function(Contact contact) delete,
  }) {
    return isEditing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function()? save,
    TResult Function()? isEditing,
    TResult Function(Contact contact)? delete,
    required TResult orElse(),
  }) {
    if (isEditing != null) {
      return isEditing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(Save value) save,
    required TResult Function(IsEditing value) isEditing,
    required TResult Function(Delete value) delete,
  }) {
    return isEditing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(Save value)? save,
    TResult Function(IsEditing value)? isEditing,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (isEditing != null) {
      return isEditing(this);
    }
    return orElse();
  }
}

abstract class IsEditing implements ContactFormEvent {
  const factory IsEditing() = _$IsEditing;
}

/// @nodoc
abstract class $DeleteCopyWith<$Res> {
  factory $DeleteCopyWith(Delete value, $Res Function(Delete) then) =
      _$DeleteCopyWithImpl<$Res>;
  $Res call({Contact contact});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$DeleteCopyWithImpl<$Res> extends _$ContactFormEventCopyWithImpl<$Res>
    implements $DeleteCopyWith<$Res> {
  _$DeleteCopyWithImpl(Delete _value, $Res Function(Delete) _then)
      : super(_value, (v) => _then(v as Delete));

  @override
  Delete get _value => super._value as Delete;

  @override
  $Res call({
    Object? contact = freezed,
  }) {
    return _then(Delete(
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
class _$Delete implements Delete {
  const _$Delete(this.contact);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'ContactFormEvent.delete(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Delete &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality().equals(other.contact, contact)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contact);

  @JsonKey(ignore: true)
  @override
  $DeleteCopyWith<Delete> get copyWith =>
      _$DeleteCopyWithImpl<Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function() save,
    required TResult Function() isEditing,
    required TResult Function(Contact contact) delete,
  }) {
    return delete(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String address)? addressChanged,
    TResult Function()? save,
    TResult Function()? isEditing,
    TResult Function(Contact contact)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(AddressChanged value) addressChanged,
    required TResult Function(Save value) save,
    required TResult Function(IsEditing value) isEditing,
    required TResult Function(Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(AddressChanged value)? addressChanged,
    TResult Function(Save value)? save,
    TResult Function(IsEditing value)? isEditing,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements ContactFormEvent {
  const factory Delete(Contact contact) = _$Delete;

  Contact get contact => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteCopyWith<Delete> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ContactFormStateTearOff {
  const _$ContactFormStateTearOff();

  _ContactFormState call(
      {required Contact contact,
      required bool isSaving,
      required bool isEditing,
      required bool isDeleting,
      required bool showErrorMessages,
      required Option<Either<FirestoreFailure, Unit>>
          saveFailureOrSuccessOption}) {
    return _ContactFormState(
      contact: contact,
      isSaving: isSaving,
      isEditing: isEditing,
      isDeleting: isDeleting,
      showErrorMessages: showErrorMessages,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ContactFormState = _$ContactFormStateTearOff();

/// @nodoc
mixin _$ContactFormState {
  Contact get contact => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isDeleting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactFormStateCopyWith<ContactFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactFormStateCopyWith<$Res> {
  factory $ContactFormStateCopyWith(
          ContactFormState value, $Res Function(ContactFormState) then) =
      _$ContactFormStateCopyWithImpl<$Res>;
  $Res call(
      {Contact contact,
      bool isSaving,
      bool isEditing,
      bool isDeleting,
      bool showErrorMessages,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSuccessOption});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$ContactFormStateCopyWithImpl<$Res>
    implements $ContactFormStateCopyWith<$Res> {
  _$ContactFormStateCopyWithImpl(this._value, this._then);

  final ContactFormState _value;
  // ignore: unused_field
  final $Res Function(ContactFormState) _then;

  @override
  $Res call({
    Object? contact = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? isDeleting = freezed,
    Object? showErrorMessages = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleting: isDeleting == freezed
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
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
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc
abstract class _$ContactFormStateCopyWith<$Res>
    implements $ContactFormStateCopyWith<$Res> {
  factory _$ContactFormStateCopyWith(
          _ContactFormState value, $Res Function(_ContactFormState) then) =
      __$ContactFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Contact contact,
      bool isSaving,
      bool isEditing,
      bool isDeleting,
      bool showErrorMessages,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$ContactFormStateCopyWithImpl<$Res>
    extends _$ContactFormStateCopyWithImpl<$Res>
    implements _$ContactFormStateCopyWith<$Res> {
  __$ContactFormStateCopyWithImpl(
      _ContactFormState _value, $Res Function(_ContactFormState) _then)
      : super(_value, (v) => _then(v as _ContactFormState));

  @override
  _ContactFormState get _value => super._value as _ContactFormState;

  @override
  $Res call({
    Object? contact = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? isDeleting = freezed,
    Object? showErrorMessages = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_ContactFormState(
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleting: isDeleting == freezed
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
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
class _$_ContactFormState implements _ContactFormState {
  const _$_ContactFormState(
      {required this.contact,
      required this.isSaving,
      required this.isEditing,
      required this.isDeleting,
      required this.showErrorMessages,
      required this.saveFailureOrSuccessOption});

  @override
  final Contact contact;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final bool isDeleting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<FirestoreFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ContactFormState(contact: $contact, isSaving: $isSaving, isEditing: $isEditing, isDeleting: $isDeleting, showErrorMessages: $showErrorMessages, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactFormState &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isDeleting, isDeleting) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleting, isDeleting)) &&
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
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isDeleting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ContactFormStateCopyWith<_ContactFormState> get copyWith =>
      __$ContactFormStateCopyWithImpl<_ContactFormState>(this, _$identity);
}

abstract class _ContactFormState implements ContactFormState {
  const factory _ContactFormState(
      {required Contact contact,
      required bool isSaving,
      required bool isEditing,
      required bool isDeleting,
      required bool showErrorMessages,
      required Option<Either<FirestoreFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_ContactFormState;

  @override
  Contact get contact => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isDeleting => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContactFormStateCopyWith<_ContactFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
