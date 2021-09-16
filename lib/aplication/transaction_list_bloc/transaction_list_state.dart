part of 'transaction_list_bloc.dart';

@freezed
class TransactionListState with _$TransactionListState {
  const factory TransactionListState.initial() = _Initial;
  const factory TransactionListState.loadInProgress() = _LoadInProgress;
  const factory TransactionListState.loadSuccess(
      KtList<Transaction> transactions) = _LoadSuccess;
  const factory TransactionListState.loadFailure() = _LoadFailure;
}
