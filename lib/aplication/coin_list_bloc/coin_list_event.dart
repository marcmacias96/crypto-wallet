part of 'coin_list_bloc.dart';

@freezed
class CoinListEvent with _$CoinListEvent {
  const factory CoinListEvent.fetchStarted() = FetchStarted;
  const factory CoinListEvent.coinsRecived(
      Either<CoinFailure, KtList<Coin>> failureOrCoins) = _CoinsRecived;
}
