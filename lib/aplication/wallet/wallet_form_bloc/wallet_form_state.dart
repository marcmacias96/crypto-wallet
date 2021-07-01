part of 'wallet_form_bloc.dart';

@freezed
class WalletFormState with _$WalletFormState {
  const factory WalletFormState(
      {required Wallet wallet,
      required bool isEditing,
      required bool isLoading,
      required bool isSaving,
      required bool  showErrorMessages,
      required Option<Either<FirestoreFailure, Unit>>
          saveFailureOrSuccessOption}) = _WalletFormState;

  factory WalletFormState.initial() => WalletFormState(
      wallet: Wallet.empty(),
      isEditing: false,
      isLoading: true,
      isSaving: false,
      showErrorMessages: false,
      saveFailureOrSuccessOption: none());
}
