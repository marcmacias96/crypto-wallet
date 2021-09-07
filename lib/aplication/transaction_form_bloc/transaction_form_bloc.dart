import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/contacts/contact.dart';
import '../../domain/core/firestore_failure.dart';
import '../../domain/transaction/i_transaction_repository.dart';
import '../../domain/transaction/transaction_failure.dart';
import '../../domain/wallet/i_wallet_repository.dart';
import '../../domain/wallet/wallet.dart';
import '../../infrastructure/wallet/wallet_dto.dart';

part 'transaction_form_bloc.freezed.dart';
part 'transaction_form_event.dart';
part 'transaction_form_state.dart';

@injectable
class TransactionFormBloc
    extends Bloc<TransactionFormEvent, TransactionFormState> {
  final ITransactionRepository _transactionRepository;
  final IWalletRepository _walletRepository;
  TransactionFormBloc(this._transactionRepository, this._walletRepository)
      : super(TransactionFormState.initial());

  @override
  Stream<TransactionFormState> mapEventToState(
      TransactionFormEvent gEvent) async* {
    yield* gEvent.map(initialized: (e) async* {
      add(_WalletRecived(await _walletRepository.watch()));
    }, walletRecived: (e) async* {
      yield e.faliureOrWallet.fold(
        (l) => state,
        (wallet) => state.copyWith(wallet: wallet),
      );
    }, sendBitcoin: (e) async* {
      yield state.copyWith(
        isLoading: true,
      );

      var failureOrSuccess = await _transactionRepository.sendBitcoin(
        state.contact!.address.getOrCrash(),
        state.value,
        WalletDto.fromDomain(state.wallet),
      );
      yield state.copyWith(
        isLoading: false,
        failureOrSuccess: optionOf(failureOrSuccess),
      );
    }, setContact: (e) async* {
      yield state.copyWith(
        contact: e.contact,
      );
    }, valueChanged: (e) async* {
      yield state.copyWith(
        value: e.value,
      );
    });
  }
}
