part of 'contact_form_bloc.dart';

@freezed
class ContactFormState with _$ContactFormState {
  const factory ContactFormState({
    required Contact contact,
    required bool isSaving,
    required bool isEditing,
    required bool isDeleting,
    required bool showErrorMessages,
    required Option<Either<FirestoreFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ContactFormState;

  factory ContactFormState.initial() => ContactFormState(
      contact: Contact.empty(),
      isSaving: false,
      isEditing: false,
      isDeleting: false,
      showErrorMessages: false,
      saveFailureOrSuccessOption: none());
}
