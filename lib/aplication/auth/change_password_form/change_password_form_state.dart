part of 'change_password_form_bloc.dart';

@freezed
class ChangePasswordFormState with _$ChangePasswordFormState {
  const factory ChangePasswordFormState({
    required Password password,
    required Password newpassword,
    required Password confirmpassword,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, AccountType>>
        changeFailureOrSuccessOption,
  }) = _ChangePasswordFormState;

  factory ChangePasswordFormState.initial() => ChangePasswordFormState(
        password: Password(''),
        newpassword: Password(''),
        confirmpassword: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        changeFailureOrSuccessOption: none(),
      );
}
