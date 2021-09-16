part of 'contact_list_bloc.dart';

@freezed
class ContactListEvent with _$ContactListEvent {
  const factory ContactListEvent.watchStarted() = Initialized;
  const factory ContactListEvent.contactsRecived(
          Either<FirestoreFailure, KtList<Contact>> failureOrContacts) =
      _ContactsRecived;
  const factory ContactListEvent.searchChange(String name) = SearchChange;
  const factory ContactListEvent.delete() = Delete;
}
