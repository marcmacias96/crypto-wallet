import 'package:bloc/bloc.dart';
import 'package:crypto_wallet/domain/contacts/contact.dart';
import 'package:crypto_wallet/domain/transaction/transaction_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_form_state.dart';
part 'transaction_form_event.dart';
part 'transaction_form_bloc.freezed.dart';

class TransactionFormBloc
    extends Bloc<TransactionFormEvent, TransactionFormState> {
  TransactionFormBloc() : super(TransactionFormState.initial());

  @override
  Stream<TransactionFormState> mapEventToState(
      TransactionFormEvent gEvent) async* {
    yield* gEvent.map(sendBitcoin: (e) async* {});
  }
}
