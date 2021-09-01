import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/transaction/transaction.dart';

part 'transaction_list_bloc.freezed.dart';
part 'transaction_list_event.dart';
part 'transaction_list_state.dart';

class TransactionListBloc
    extends Bloc<TransactionListEvent, TransactionListState> {
  TransactionListBloc() : super(TransactionListState.initial());

  @override
  Stream<TransactionListState> mapEventToState(
      TransactionListEvent gEvent) async* {
    yield* gEvent.map(fetchTransactions: (e) async* {});
  }
}
