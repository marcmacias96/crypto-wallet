part of 'transaction_form_bloc.dart';

@freezed
class TransactionFormState with _$TransactionFormState {
  const factory TransactionFormState({
    required bool isLoading,
    required Option<Either<TransactionFailure, Unit>> failureOrSuccess,
    required String toAddress,
    required double value,
  }) = _TransactionFormState;

  factory TransactionFormState.initial() => TransactionFormState(
        isLoading: false,
        failureOrSuccess: none(),
        toAddress: '',
        value: 0.0,
      );
}
