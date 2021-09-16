// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'contact_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactListEventTearOff {
  const _$ContactListEventTearOff();

  Initialized watchStarted() {
    return const Initialized();
  }

  _ContactsRecived contactsRecived(
      Either<FirestoreFailure, KtList<Contact>> failureOrContacts) {
    return _ContactsRecived(
      failureOrContacts,
    );
  }

  SearchChange searchChange(String name) {
    return SearchChange(
      name,
    );
  }

  Delete delete() {
    return const Delete();
  }
}

/// @nodoc
const $ContactListEvent = _$ContactListEventTearOff();

/// @nodoc
mixin _$ContactListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(
            Either<FirestoreFailure, KtList<Contact>> failureOrContacts)
        contactsRecived,
    required TResult Function(String name) searchChange,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(
            Either<FirestoreFailure, KtList<Contact>> failureOrContacts)?
        contactsRecived,
    TResult Function(String name)? searchChange,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) watchStarted,
    required TResult Function(_ContactsRecived value) contactsRecived,
    required TResult Function(SearchChange value) searchChange,
    required TResult Function(Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? watchStarted,
    TResult Function(_ContactsRecived value)? contactsRecived,
    TResult Function(SearchChange value)? searchChange,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListEventCopyWith<$Res> {
  factory $ContactListEventCopyWith(
          ContactListEvent value, $Res Function(ContactListEvent) then) =
      _$ContactListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactListEventCopyWithImpl<$Res>
    implements $ContactListEventCopyWith<$Res> {
  _$ContactListEventCopyWithImpl(this._value, this._then);

  final ContactListEvent _value;
  // ignore: unused_field
  final $Res Function(ContactListEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res>
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
    return 'ContactListEvent.watchStarted()';
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
    required TResult Function() watchStarted,
    required TResult Function(
            Either<FirestoreFailure, KtList<Contact>> failureOrContacts)
        contactsRecived,
    required TResult Function(String name) searchChange,
    required TResult Function() delete,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(
            Either<FirestoreFailure, KtList<Contact>> failureOrContacts)?
        contactsRecived,
    TResult Function(String name)? searchChange,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) watchStarted,
    required TResult Function(_ContactsRecived value) contactsRecived,
    required TResult Function(SearchChange value) searchChange,
    required TResult Function(Delete value) delete,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? watchStarted,
    TResult Function(_ContactsRecived value)? contactsRecived,
    TResult Function(SearchChange value)? searchChange,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class Initialized implements ContactListEvent {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
abstract class _$ContactsRecivedCopyWith<$Res> {
  factory _$ContactsRecivedCopyWith(
          _ContactsRecived value, $Res Function(_ContactsRecived) then) =
      __$ContactsRecivedCopyWithImpl<$Res>;
  $Res call({Either<FirestoreFailure, KtList<Contact>> failureOrContacts});
}

/// @nodoc
class __$ContactsRecivedCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res>
    implements _$ContactsRecivedCopyWith<$Res> {
  __$ContactsRecivedCopyWithImpl(
      _ContactsRecived _value, $Res Function(_ContactsRecived) _then)
      : super(_value, (v) => _then(v as _ContactsRecived));

  @override
  _ContactsRecived get _value => super._value as _ContactsRecived;

  @override
  $Res call({
    Object? failureOrContacts = freezed,
  }) {
    return _then(_ContactsRecived(
      failureOrContacts == freezed
          ? _value.failureOrContacts
          : failureOrContacts // ignore: cast_nullable_to_non_nullable
              as Either<FirestoreFailure, KtList<Contact>>,
    ));
  }
}

/// @nodoc
class _$_ContactsRecived implements _ContactsRecived {
  const _$_ContactsRecived(this.failureOrContacts);

  @override
  final Either<FirestoreFailure, KtList<Contact>> failureOrContacts;

  @override
  String toString() {
    return 'ContactListEvent.contactsRecived(failureOrContacts: $failureOrContacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactsRecived &&
            (identical(other.failureOrContacts, failureOrContacts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrContacts, failureOrContacts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrContacts);

  @JsonKey(ignore: true)
  @override
  _$ContactsRecivedCopyWith<_ContactsRecived> get copyWith =>
      __$ContactsRecivedCopyWithImpl<_ContactsRecived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(
            Either<FirestoreFailure, KtList<Contact>> failureOrContacts)
        contactsRecived,
    required TResult Function(String name) searchChange,
    required TResult Function() delete,
  }) {
    return contactsRecived(failureOrContacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(
            Either<FirestoreFailure, KtList<Contact>> failureOrContacts)?
        contactsRecived,
    TResult Function(String name)? searchChange,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (contactsRecived != null) {
      return contactsRecived(failureOrContacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) watchStarted,
    required TResult Function(_ContactsRecived value) contactsRecived,
    required TResult Function(SearchChange value) searchChange,
    required TResult Function(Delete value) delete,
  }) {
    return contactsRecived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? watchStarted,
    TResult Function(_ContactsRecived value)? contactsRecived,
    TResult Function(SearchChange value)? searchChange,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (contactsRecived != null) {
      return contactsRecived(this);
    }
    return orElse();
  }
}

abstract class _ContactsRecived implements ContactListEvent {
  const factory _ContactsRecived(
          Either<FirestoreFailure, KtList<Contact>> failureOrContacts) =
      _$_ContactsRecived;

  Either<FirestoreFailure, KtList<Contact>> get failureOrContacts =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ContactsRecivedCopyWith<_ContactsRecived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchChangeCopyWith<$Res> {
  factory $SearchChangeCopyWith(
          SearchChange value, $Res Function(SearchChange) then) =
      _$SearchChangeCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$SearchChangeCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res>
    implements $SearchChangeCopyWith<$Res> {
  _$SearchChangeCopyWithImpl(
      SearchChange _value, $Res Function(SearchChange) _then)
      : super(_value, (v) => _then(v as SearchChange));

  @override
  SearchChange get _value => super._value as SearchChange;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(SearchChange(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$SearchChange implements SearchChange {
  const _$SearchChange(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ContactListEvent.searchChange(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchChange &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $SearchChangeCopyWith<SearchChange> get copyWith =>
      _$SearchChangeCopyWithImpl<SearchChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(
            Either<FirestoreFailure, KtList<Contact>> failureOrContacts)
        contactsRecived,
    required TResult Function(String name) searchChange,
    required TResult Function() delete,
  }) {
    return searchChange(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(
            Either<FirestoreFailure, KtList<Contact>> failureOrContacts)?
        contactsRecived,
    TResult Function(String name)? searchChange,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (searchChange != null) {
      return searchChange(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) watchStarted,
    required TResult Function(_ContactsRecived value) contactsRecived,
    required TResult Function(SearchChange value) searchChange,
    required TResult Function(Delete value) delete,
  }) {
    return searchChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? watchStarted,
    TResult Function(_ContactsRecived value)? contactsRecived,
    TResult Function(SearchChange value)? searchChange,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (searchChange != null) {
      return searchChange(this);
    }
    return orElse();
  }
}

abstract class SearchChange implements ContactListEvent {
  const factory SearchChange(String name) = _$SearchChange;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchChangeCopyWith<SearchChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCopyWith<$Res> {
  factory $DeleteCopyWith(Delete value, $Res Function(Delete) then) =
      _$DeleteCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteCopyWithImpl<$Res> extends _$ContactListEventCopyWithImpl<$Res>
    implements $DeleteCopyWith<$Res> {
  _$DeleteCopyWithImpl(Delete _value, $Res Function(Delete) _then)
      : super(_value, (v) => _then(v as Delete));

  @override
  Delete get _value => super._value as Delete;
}

/// @nodoc
class _$Delete implements Delete {
  const _$Delete();

  @override
  String toString() {
    return 'ContactListEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Delete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(
            Either<FirestoreFailure, KtList<Contact>> failureOrContacts)
        contactsRecived,
    required TResult Function(String name) searchChange,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(
            Either<FirestoreFailure, KtList<Contact>> failureOrContacts)?
        contactsRecived,
    TResult Function(String name)? searchChange,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) watchStarted,
    required TResult Function(_ContactsRecived value) contactsRecived,
    required TResult Function(SearchChange value) searchChange,
    required TResult Function(Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? watchStarted,
    TResult Function(_ContactsRecived value)? contactsRecived,
    TResult Function(SearchChange value)? searchChange,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements ContactListEvent {
  const factory Delete() = _$Delete;
}

/// @nodoc
class _$ContactListStateTearOff {
  const _$ContactListStateTearOff();

  _ContactListState call(
      {required KtList<Contact> contacts,
      required KtList<Contact> contactsFiltered,
      required bool isLoading,
      required bool isSearching,
      required Option<FirestoreFailure> loadFailureOrSuccessOption}) {
    return _ContactListState(
      contacts: contacts,
      contactsFiltered: contactsFiltered,
      isLoading: isLoading,
      isSearching: isSearching,
      loadFailureOrSuccessOption: loadFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ContactListState = _$ContactListStateTearOff();

/// @nodoc
mixin _$ContactListState {
  KtList<Contact> get contacts => throw _privateConstructorUsedError;
  KtList<Contact> get contactsFiltered => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  Option<FirestoreFailure> get loadFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactListStateCopyWith<ContactListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListStateCopyWith<$Res> {
  factory $ContactListStateCopyWith(
          ContactListState value, $Res Function(ContactListState) then) =
      _$ContactListStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<Contact> contacts,
      KtList<Contact> contactsFiltered,
      bool isLoading,
      bool isSearching,
      Option<FirestoreFailure> loadFailureOrSuccessOption});
}

/// @nodoc
class _$ContactListStateCopyWithImpl<$Res>
    implements $ContactListStateCopyWith<$Res> {
  _$ContactListStateCopyWithImpl(this._value, this._then);

  final ContactListState _value;
  // ignore: unused_field
  final $Res Function(ContactListState) _then;

  @override
  $Res call({
    Object? contacts = freezed,
    Object? contactsFiltered = freezed,
    Object? isLoading = freezed,
    Object? isSearching = freezed,
    Object? loadFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      contacts: contacts == freezed
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as KtList<Contact>,
      contactsFiltered: contactsFiltered == freezed
          ? _value.contactsFiltered
          : contactsFiltered // ignore: cast_nullable_to_non_nullable
              as KtList<Contact>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      loadFailureOrSuccessOption: loadFailureOrSuccessOption == freezed
          ? _value.loadFailureOrSuccessOption
          : loadFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<FirestoreFailure>,
    ));
  }
}

/// @nodoc
abstract class _$ContactListStateCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$ContactListStateCopyWith(
          _ContactListState value, $Res Function(_ContactListState) then) =
      __$ContactListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<Contact> contacts,
      KtList<Contact> contactsFiltered,
      bool isLoading,
      bool isSearching,
      Option<FirestoreFailure> loadFailureOrSuccessOption});
}

/// @nodoc
class __$ContactListStateCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res>
    implements _$ContactListStateCopyWith<$Res> {
  __$ContactListStateCopyWithImpl(
      _ContactListState _value, $Res Function(_ContactListState) _then)
      : super(_value, (v) => _then(v as _ContactListState));

  @override
  _ContactListState get _value => super._value as _ContactListState;

  @override
  $Res call({
    Object? contacts = freezed,
    Object? contactsFiltered = freezed,
    Object? isLoading = freezed,
    Object? isSearching = freezed,
    Object? loadFailureOrSuccessOption = freezed,
  }) {
    return _then(_ContactListState(
      contacts: contacts == freezed
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as KtList<Contact>,
      contactsFiltered: contactsFiltered == freezed
          ? _value.contactsFiltered
          : contactsFiltered // ignore: cast_nullable_to_non_nullable
              as KtList<Contact>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      loadFailureOrSuccessOption: loadFailureOrSuccessOption == freezed
          ? _value.loadFailureOrSuccessOption
          : loadFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<FirestoreFailure>,
    ));
  }
}

/// @nodoc
class _$_ContactListState implements _ContactListState {
  const _$_ContactListState(
      {required this.contacts,
      required this.contactsFiltered,
      required this.isLoading,
      required this.isSearching,
      required this.loadFailureOrSuccessOption});

  @override
  final KtList<Contact> contacts;
  @override
  final KtList<Contact> contactsFiltered;
  @override
  final bool isLoading;
  @override
  final bool isSearching;
  @override
  final Option<FirestoreFailure> loadFailureOrSuccessOption;

  @override
  String toString() {
    return 'ContactListState(contacts: $contacts, contactsFiltered: $contactsFiltered, isLoading: $isLoading, isSearching: $isSearching, loadFailureOrSuccessOption: $loadFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactListState &&
            (identical(other.contacts, contacts) ||
                const DeepCollectionEquality()
                    .equals(other.contacts, contacts)) &&
            (identical(other.contactsFiltered, contactsFiltered) ||
                const DeepCollectionEquality()
                    .equals(other.contactsFiltered, contactsFiltered)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.loadFailureOrSuccessOption,
                    loadFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.loadFailureOrSuccessOption,
                    loadFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contacts) ^
      const DeepCollectionEquality().hash(contactsFiltered) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(loadFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ContactListStateCopyWith<_ContactListState> get copyWith =>
      __$ContactListStateCopyWithImpl<_ContactListState>(this, _$identity);
}

abstract class _ContactListState implements ContactListState {
  const factory _ContactListState(
          {required KtList<Contact> contacts,
          required KtList<Contact> contactsFiltered,
          required bool isLoading,
          required bool isSearching,
          required Option<FirestoreFailure> loadFailureOrSuccessOption}) =
      _$_ContactListState;

  @override
  KtList<Contact> get contacts => throw _privateConstructorUsedError;
  @override
  KtList<Contact> get contactsFiltered => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isSearching => throw _privateConstructorUsedError;
  @override
  Option<FirestoreFailure> get loadFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContactListStateCopyWith<_ContactListState> get copyWith =>
      throw _privateConstructorUsedError;
}
