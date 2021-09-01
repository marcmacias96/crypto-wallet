import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto_wallet/infrastructure/wallet/tatum_api/tatum_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/core/firestore_failure.dart';
import '../../domain/wallet/i_wallet_repository.dart';
import '../../domain/wallet/wallet.dart';
import '../../domain/wallet/wallet_failure.dart';
import '../../domain/wallet_response/wallet_response.dart';
import '../../injection.dart';
import '../../utils/user_preference.dart';
import '../auth/user_dto.dart';
import '../core/firestore_helpers.dart';
import '../wallet_response/walletresponsedto.dart';

import 'wallet_dto.dart';

@LazySingleton(as: IWalletRepository)
class WalletRepository implements IWalletRepository {
  final FirebaseFirestore _firestore;

  WalletRepository(this._firestore);

  @override
  Future<Either<FirestoreFailure, Unit>> saveOnFirestore(Wallet wallet) async {
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
    } on Exception catch (_) {
      return left(const FirestoreFailure.unexpected());
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

  @override
  Future<Either<FirestoreFailure, Wallet>> watch() async {
    try {
      final userDoc = await _firestore.userDocument();
      final query = userDoc.walletCollection
          .where("is_default", isEqualTo: true)
          .limit(1);

      final snapshot = await query.get();
      final walletDto = WalletDto.fromFirestore(snapshot.docs[0]);
      UserPreference.setWalletId(walletDto.id);
      var wallet = walletDto.toDomain();

      var response = await TatumApi.getBalance(wallet.address);

      var balance = WalletBalanceDto.fromJson(response).toDomain();

      return right(wallet.copyWith(balance: balance.incoming));
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const FirestoreFailure.insufficientPermissions());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<AddressResponse> createAddress(Wallet wallet) async {
    try {
      final response = await TatumApi.createAddress(wallet);
      return AddressResponseDto.fromJson(response).toDomain();
    } on WalletFailure catch (e) {
      print(e);
      throw Exception('Error al crear la address');
    }
  }

  @override
  Future<WalletResponse> createWallet(String mnemonic) async {
    try {
      final response = await TatumApi.createWallet(mnemonic);
      final walletRes = WalletResponseDto.fromJson(response).toDomain();
      return walletRes;
    } on WalletFailure catch (e) {
      print(e);
      throw Exception('Error al crear la wallet');
    }
  }

  @override
  Future<PrivateKeyResponse> createPrivateKay(String mnemonic) async {
    try {
      final response = await TatumApi.createPrivateKey(mnemonic);
      return PrivateKeyDto.fromJson(response).toDomain();
    } on WalletFailure catch (e) {
      print(e);
      throw Exception('Error al crear private Kay');
    }
  }
}
