part of 'wallet_watch_bloc.dart';

@freezed
class WalletWatchState with _$WalletWatchState {
  const factory WalletWatchState.initial() = _Initial;
  const factory WalletWatchState.loadInProgress() = _LoadInProgress;
  const factory WalletWatchState.loadSuccess(Wallet wallet) = _LoadSuccess;
  const factory WalletWatchState.loadFailure(FirestoreFailure failure) =
      _LoadFailure;
}
