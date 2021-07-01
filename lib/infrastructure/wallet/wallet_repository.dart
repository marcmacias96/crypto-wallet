import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/firestore_failure.dart';
import '../../domain/wallet/i_wallet_repository.dart';
import '../../domain/wallet/wallet.dart';
import '../core/firestore_helpers.dart';
import 'wallet_dto.dart';

@LazySingleton(as: IWalletRepository)
class WalletRepository implements IWalletRepository {
  final FirebaseFirestore _firestore;

  WalletRepository(this._firestore);

  @override
  Future<Either<FirestoreFailure, Unit>> create(Wallet wallet) async {
    try {
      final userDoc = await _firestore.userDocument();
      final walletDto = WalletDto.fromDomain(wallet);
      await userDoc.walletCollerction.doc(walletDto.id).set(walletDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const FirestoreFailure.insufficientPermissions());
      } else if (e.code == 'unavailable') {
        return left(const FirestoreFailure.noInternet());
      } else if (e.code == 'not-found') {
        return left(const FirestoreFailure.doesNotExist());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirestoreFailure, Unit>> dalete(Wallet wallet) async {
    try {
      final userDoc = await _firestore.userDocument();
      final walletDto = WalletDto.fromDomain(wallet);
      await userDoc.walletCollerction.doc(walletDto.id).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const FirestoreFailure.insufficientPermissions());
      } else if (e.code == 'unavailable') {
        return left(const FirestoreFailure.noInternet());
      } else if (e.code == 'not-found') {
        return left(const FirestoreFailure.doesNotExist());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirestoreFailure, Unit>> update(Wallet wallet) async {
    try {
      final userDoc = await _firestore.userDocument();
      final walletDto = WalletDto.fromDomain(wallet);
      await userDoc.walletCollerction
          .doc(walletDto.id)
          .update(walletDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const FirestoreFailure.insufficientPermissions());
      } else if (e.code == 'not-found') {
        return left(const FirestoreFailure.doesNotExist());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    }
  }
}
