part of 'transaction_form_bloc.dart';

@freezed
class TransactionFormState with _$TransactionFormState {
  const factory TransactionFormState({
    required bool isLoading,
    required Option<Either<TransactionFailure, Unit>> failureOrSuccess,
    Contact? contact,
    required double value,
    required Wallet wallet,
  }) = _TransactionFormState;

  factory TransactionFormState.initial() => TransactionFormState(
        isLoading: false,
        failureOrSuccess: none(),
        value: 0.0,
        wallet: Wallet.empty(),
      );
}
