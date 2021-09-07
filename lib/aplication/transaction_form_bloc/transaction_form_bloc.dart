import 'package:bloc/bloc.dart';
import 'package:crypto_wallet/domain/contacts/contact.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/transaction/transaction_failure.dart';

part 'transaction_form_bloc.freezed.dart';
part 'transaction_form_event.dart';
part 'transaction_form_state.dart';

@injectable
class TransactionFormBloc
    extends Bloc<TransactionFormEvent, TransactionFormState> {
  TransactionFormBloc() : super(TransactionFormState.initial());

  @override
  Stream<TransactionFormState> mapEventToState(
      TransactionFormEvent gEvent) async* {
    yield* gEvent.map(
      sendBitcoin: (e) async* {},
      setContact: (e) async* {
        yield state.copyWith(
          contact: e.contact,
        );
      },
    );
  }
}
