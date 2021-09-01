import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/transaction/i_transaction_repository.dart';
import '../../domain/transaction/transaction.dart';
import '../../domain/transaction/transaction_failure.dart';
import '../data_source/tatum_api/tatum_api.dart';
import '../wallet/wallet_dto.dart';
import 'dtos/transaction_dto.dart';

class TransactionRepository implements ITransactionRepository {
  @override
  Future<Either<TransactionFailure, KtList<Transaction>>> getTransaction(
      String address) async {
    try {
      var response = await TatumApi.getTransactions(address);
      var transactions = response
          .map((transactio) => TransactionDto.fromJson(transactio).toDomain())
          .toImmutableList();
      return right(transactions);
    } on TransactionFailure catch (_) {
      return left(TransactionFailure.unexpected());
    }
  }

  @override
  Future<Either<TransactionFailure, Unit>> sendBitcoin(
    WalletDto wallet,
    String to,
    double value,
  ) async {
    try {
      await TatumApi.sendBitcoin(to, wallet.address, value, wallet.privateKey);
      return right(unit);
    } on TransactionFailure catch (_) {
      return left(TransactionFailure.unexpected());
    }
  }
}
