part of 'contact_form_bloc.dart';

@freezed
class ContactFormEvent with _$ContactFormEvent {
  const factory ContactFormEvent.initialized(Contact contact) = Initialized;
  const factory ContactFormEvent.nameChanged(String name) = NameChanged;
  const factory ContactFormEvent.addressChanged(String address) =
      AddressChanged;
  const factory ContactFormEvent.save() = Save;
  const factory ContactFormEvent.isEditing() = IsEditing;
  const factory ContactFormEvent.delete(Contact contact) = Delete;
}
