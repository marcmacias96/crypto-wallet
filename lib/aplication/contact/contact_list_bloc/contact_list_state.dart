part of 'contact_list_bloc.dart';

@freezed
class ContactListState with _$ContactListState {
  const factory ContactListState({
    required KtList<Contact> contacts,
    required KtList<Contact> contactsFiltered,
    required bool isLoading,
    required bool isSearching,
    required Option<FirestoreFailure> loadFailureOrSuccessOption,
  }) = _ContactListState;

  factory ContactListState.initial() => ContactListState(
        isSearching: false,
        isLoading: true,
        loadFailureOrSuccessOption: none(),
        contacts: KtList<Contact>.empty(),
        contactsFiltered: KtList<Contact>.empty(),
      );
}
