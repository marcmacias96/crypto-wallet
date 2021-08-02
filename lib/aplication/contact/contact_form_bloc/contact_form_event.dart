part of 'contact_form_bloc.dart';

@freezed
class ContactFormEvent with _$ContactFormEvent {
  const factory ContactFormEvent.initialized(
      String address, Option<Contact> contact) = Initialized;
  const factory ContactFormEvent.nameChanged(String name) = NameChanged;
  const factory ContactFormEvent.addressChanged(String address) =
      AddressChanged;
  const factory ContactFormEvent.save() = Save;
}
