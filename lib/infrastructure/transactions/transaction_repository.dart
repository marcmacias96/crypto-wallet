import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/transaction/i_transaction_repository.dart';

import '../../domain/transaction/transaction.dart' as domain;

import '../../domain/transaction/transaction_failure.dart';
import '../data_source/tatum_api/tatum_api.dart';
import '../wallet/wallet_dto.dart';
import 'dtos/transaction_dto.dart';

@LazySingleton(as: ITransactionRepository)
class TransactionRepository implements ITransactionRepository {
  const TransactionRepository();
  @override
  Future<Either<TransactionFailure, KtList<domain.Transaction>>> getTransaction(
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
    String to,
    double value,
    WalletDto walletDto,
  ) async {
    try {
      await TatumApi.sendBitcoin(
          to, walletDto.address, value, walletDto.privateKey);
      return right(unit);
    } on TransactionFailure catch (_) {
      return left(TransactionFailure.unexpected());
    }
  }
}
