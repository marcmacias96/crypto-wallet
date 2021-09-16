part of 'wallet_watch_bloc.dart';

@freezed
class WalletWatchEvent with _$WalletWatchEvent {
  const factory WalletWatchEvent.watchStarted() = WatchStarted;
  const factory WalletWatchEvent.walletReceived(
      Either<FirestoreFailure, Wallet> failureOrSuccess) = _WalletReceived;
}
