import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:crypto_wallet/domain/wallet/i_wallet_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/core/firestore_failure.dart';
import '../../../domain/wallet/wallet.dart';

part 'wallet_watch_bloc.freezed.dart';
part 'wallet_watch_event.dart';
part 'wallet_watch_state.dart';

@injectable
class WalletWatchBloc extends Bloc<WalletWatchEvent, WalletWatchState> {
  final IWalletRepository _walletRepository;
  WalletWatchBloc(this._walletRepository) : super(WalletWatchState.initial());

  @override
  Stream<WalletWatchState> mapEventToState(WalletWatchEvent gEvent) async* {
    yield* gEvent.map(
      watchStarted: (e) async* {
        yield WalletWatchState.loadInProgress();
        add(WalletWatchEvent.walletReceived(await _walletRepository.watch()));
      },
      walletReceived: (e) async* {
        yield e.failureOrSuccess.fold(
          (failure) => WalletWatchState.loadFailure(failure),
          (wallet) => WalletWatchState.loadSuccess(wallet),
        );
      },
    );
  }
}
