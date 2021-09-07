import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/transaction/transaction_failure.dart';

part 'transaction_form_bloc.freezed.dart';
part 'transaction_form_event.dart';
part 'transaction_form_state.dart';

class TransactionFormBloc
    extends Bloc<TransactionFormEvent, TransactionFormState> {
  TransactionFormBloc() : super(TransactionFormState.initial());

  @override
  Stream<TransactionFormState> mapEventToState(
      TransactionFormEvent gEvent) async* {
    yield* gEvent.map(sendBitcoin: (e) async* {});
  }
}
