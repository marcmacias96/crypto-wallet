import 'package:crypto_wallet/domain/wallet/wallet_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'wallet.dart';
import 'wallet_failure.dart';

abstract class IWalletRepository {
  Stream<Either<WalletFailure, KtList<Wallet>>> watchAll();

  Future<Either<WalletFailure, Unit>> create(Wallet wallet);
  Future<Either<WalletFailure, Unit>> update(Wallet wallet);
  Future<Either<WalletFailure, Unit>> dalete(Wallet wallet);
}
