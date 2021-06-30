part of 'wallet_form_bloc.dart';

@freezed
class WalletFormState with _$WalletFormState {
  const factory WalletFormState(
      {required Wallet wallet,
      required bool isEditing,
      required bool isLoading,
      required bool isSaving,
      required Option<Either<FirestoreFailure, Unit>>
          saveFailureOrSuccessOption}) = _WalletFormState;

  factory WalletFormState.initial() => WalletFormState(
      wallet: Wallet.empty(),
      isEditing: false,
      isLoading: false,
      isSaving: false,
      saveFailureOrSuccessOption: none());
}
