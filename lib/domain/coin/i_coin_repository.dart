import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'coin.dart';
import 'coin_failure.dart';

abstract class ICoinRepository {
  Future<Either<CoinFailure, KtList<Coin>>> getPrices();
}
