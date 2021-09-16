part of 'transaction_list_bloc.dart';

@freezed
class TransactionListEvent with _$TransactionListEvent {
  const factory TransactionListEvent.fetchTransactions() = FetchTransactions;
  const factory TransactionListEvent.transactionsRecived(
      Either<TransactionFailure, KtList<Transaction>>
          failureOrTransactions) = _TransactionsRecived;
}
