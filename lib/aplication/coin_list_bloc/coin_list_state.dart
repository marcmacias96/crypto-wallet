part of 'coin_list_bloc.dart';

@freezed
class CoinListState with _$CoinListState {
  const factory CoinListState.initial() = _Initial;
  const factory CoinListState.loadInProgress() = _LoadInProgress;
  const factory CoinListState.loadSuccess(KtList<Coin> coins) = _LoadSuccess;
  const factory CoinListState.loadFailure(CoinFailure failure) = _LoadFailure;
}
