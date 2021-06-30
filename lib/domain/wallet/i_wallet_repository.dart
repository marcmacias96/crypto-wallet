import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';
import 'wallet.dart';

abstract class IWalletRepository {
  Future<Either<FirestoreFailure, Unit>> create(Wallet wallet);
  Future<Either<FirestoreFailure, Unit>> update(Wallet wallet);
  Future<Either<FirestoreFailure, Unit>> dalete(Wallet wallet);
}
