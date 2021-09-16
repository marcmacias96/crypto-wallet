import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/transaction/i_transaction_repository.dart';
import '../../domain/transaction/transaction.dart';
import '../../domain/transaction/transaction_failure.dart';
import '../../utils/user_preference.dart';

part 'transaction_list_bloc.freezed.dart';
part 'transaction_list_event.dart';
part 'transaction_list_state.dart';

@injectable
class TransactionListBloc
    extends Bloc<TransactionListEvent, TransactionListState> {
  final ITransactionRepository _transactionRepository;
  TransactionListBloc(this._transactionRepository)
      : super(TransactionListState.initial());

  @override
  Stream<TransactionListState> mapEventToState(
      TransactionListEvent gEvent) async* {
    yield* gEvent.map(
      fetchTransactions: (e) async* {
        yield TransactionListState.loadInProgress();
        add(TransactionListEvent.transactionsRecived(
            await _transactionRepository
                .getTransactions(UserPreference.getWalletAddress())));
      },
      transactionsRecived: (e) async* {
        yield e.failureOrTransactions.fold(
          (l) => TransactionListState.loadFailure(),
          (transactions) => TransactionListState.loadSuccess(transactions),
        );
      },
    );
  }
}
