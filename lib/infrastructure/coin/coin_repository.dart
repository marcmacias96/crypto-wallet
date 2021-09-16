import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/coin/coin.dart';
import '../../domain/coin/coin_failure.dart';
import '../../domain/coin/i_coin_repository.dart';
import '../data_source/coingecko_api.dart';
import 'coin_dto.dart';

@LazySingleton(as: ICoinRepository)
class CoinRepository implements ICoinRepository {
  @override
  Future<Either<CoinFailure, KtList<Coin>>> getPrices() async {
    try {
      final response = await CoingeckoApi.getCoinsMarkets();

      return right(response
          .map((jsonCoin) => CoinDto.fromJson(jsonCoin).toDomain())
          .toImmutableList());
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      return left(CoinFailure.unexpected());
    }
  }
}
