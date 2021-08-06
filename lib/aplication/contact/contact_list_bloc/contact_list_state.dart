part of 'contact_list_bloc.dart';

@freezed
class ContactListState with _$ContactListState {
  const factory ContactListState({
    required KtList<Contact> contacts,
    required bool isLoading,
    required bool hasMore,
    required Option<FirestoreFailure> loadFailureOrSuccessOption,
  }) = _ContactListState;

  factory ContactListState.initial() => ContactListState(
      hasMore: true,
      isLoading: true,
      loadFailureOrSuccessOption: none(),
      contacts: KtList<Contact>.empty());
}
