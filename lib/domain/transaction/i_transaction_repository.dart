import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../../infrastructure/wallet/wallet_dto.dart';
import 'transaction.dart';
import 'transaction_failure.dart';

abstract class ITransactionRepository {
  Future<Either<TransactionFailure, KtList<Transaction>>> getTransaction(
      String address);

  Future<Either<TransactionFailure, Unit>> sendBitcoin(
      String to, double value, WalletDto walletDto);
}
