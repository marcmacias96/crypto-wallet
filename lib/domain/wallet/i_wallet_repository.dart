import 'package:crypto_wallet/domain/wallet/wallet_failure.dart';
import 'package:crypto_wallet/domain/wallet_response/wallet_response.dart';
import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';
import 'wallet.dart';

abstract class IWalletRepository {
  Future<Either<FirestoreFailure, Unit>> saveOnFirestore(Wallet wallet);
  Future<Either<WalletFailure, WalletResponse>> create(Wallet wallet);
  Future<Either<FirestoreFailure, Unit>> update(Wallet wallet);
  Future<Either<FirestoreFailure, Unit>> delete(Wallet wallet);
}
