import 'package:dartz/dartz.dart';

import '../core/firestore_failure.dart';
import '../wallet_response/wallet_response.dart';
import 'wallet.dart';
import 'wallet_failure.dart';

abstract class IWalletRepository {
  Future<Either<FirestoreFailure, Unit>> saveOnFirestore(Wallet wallet);
  Future<WalletResponse> createWallet(String mnemonic);
  Future<AddressResponse> createAddress(Wallet wallet);
  Future<Either<FirestoreFailure, Unit>> update(Wallet wallet);
  Future<Either<FirestoreFailure, Unit>> delete(Wallet wallet);
  Future<Either<FirestoreFailure, Wallet>> watch();
}
