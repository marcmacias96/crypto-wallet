part of 'change_password_form_bloc.dart';

@freezed
class ChangePasswordFormEvent with _$ChangePasswordFormEvent {
  // Notice that these events take in "raw" unvalidated Strings
  const factory ChangePasswordFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory ChangePasswordFormEvent.newpasswordChanged(
      String newpasswordStr) = NewPasswordChanged;
  const factory ChangePasswordFormEvent.confirmpasswordChanged(
      String confirmpasswordStr) = ConfirmPasswordChanged;
  const factory ChangePasswordFormEvent.changePasswordPressed() =
      ChangePasswordPressed;
}
