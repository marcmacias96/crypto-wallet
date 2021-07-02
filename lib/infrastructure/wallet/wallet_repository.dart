import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/core/firestore_failure.dart';
import '../../domain/wallet/i_wallet_repository.dart';
import '../../domain/wallet/wallet.dart';
import '../../injection.dart';
import '../auth/user_dto.dart';
import '../core/firestore_helpers.dart';
import 'wallet_dto.dart';

@LazySingleton(as: IWalletRepository)
class WalletRepository implements IWalletRepository {
  final FirebaseFirestore _firestore;

  WalletRepository(this._firestore);

  @override
  Future<Either<FirestoreFailure, Unit>> create(Wallet wallet) async {
    try {
      final batch = _firestore.batch();
      final userDoc = await _firestore.userDocument();
      final walletDto = WalletDto.fromDomain(wallet);
      final walletRef = await userDoc.walletCollection.doc(walletDto.id);
      batch.set(walletRef, walletDto.toJson());

      final userOption = await getIt<IAuthFacade>().getSignedInUser();
      final user = userOption.getOrElse(() => throw FirebaseException(
          plugin: 'auth', code: 'no-auth', message: 'no autenticated'));

      final userDto = UserDto.fromDomain(user.copyWith(name: wallet.name!));
      batch.set(userDoc, userDto.toJson());
      batch.commit();
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
  Future<Either<FirestoreFailure, Unit>> delete(Wallet wallet) async {
    try {
      final userDoc = await _firestore.userDocument();
      final walletDto = WalletDto.fromDomain(wallet);
      await userDoc.walletCollection.doc(walletDto.id).delete();
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
      await userDoc.walletCollection
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
