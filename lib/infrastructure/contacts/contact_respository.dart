import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/contacts/contact.dart';
import '../../domain/contacts/i_contact_repository.dart';
import '../../domain/core/firestore_failure.dart';
import '../../utils/user_preference.dart';
import '../core/firestore_helpers.dart';
import 'contact_dto.dart';

@LazySingleton(as: IContactRepository)
class ContactRepository implements IContactRepository {
  final FirebaseFirestore _firestore;

  ContactRepository(this._firestore);
  @override
  Future<Either<FirestoreFailure, Unit>> create(Contact contact) async {
    try {
      final batch = _firestore.batch();
      final userDoc = await _firestore.userDocument();
      final contactDto = ContactDto.fromDomain(contact);
      final walletRef =
          userDoc.walletCollection.doc(UserPreference.getWalletId());
      final contactRef = walletRef.contactCollection.doc(contactDto.id);
      batch.set(contactRef, contactDto.toJson());
      batch.commit();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const FirestoreFailure.insufficientPermissions());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirestoreFailure, Unit>> dalete(Contact contact) {
    // TODO: implement dalete
    throw UnimplementedError();
  }

  @override
  Future<Either<FirestoreFailure, Unit>> update(Contact contact) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<FirestoreFailure, KtList<Contact>>> watchAll(int limit) async* {
    try {
      final userDoc = await _firestore.userDocument();
      final reference = userDoc.walletCollection
          .doc(UserPreference.getWalletId())
          .contactCollection
          .orderBy('name')
          .limit(limit);

      yield* reference.snapshots().map((snapShot) {
        if (snapShot.size > 0) {
          final contacts = snapShot.docs
              .map((doc) => ContactDto.fromFirestore(doc).toDomain())
              .toImmutableList();
          return right<FirestoreFailure, KtList<Contact>>(contacts);
        } else {
          if (snapShot.metadata.isFromCache) {
            return left<FirestoreFailure, KtList<Contact>>(
                FirestoreFailure.noInternet());
          }
          return left<FirestoreFailure, KtList<Contact>>(
              FirestoreFailure.doesNotExist());
        }
      }).onErrorReturnWith((e, _) {
        if (e is FirebaseException && e.code == 'permission-denied') {
          return left<FirestoreFailure, KtList<Contact>>(
              FirestoreFailure.insufficientPermissions());
        } else {
          return left<FirestoreFailure, KtList<Contact>>(
              const FirestoreFailure.unexpected());
        }
      });
    } on FirebaseException catch (_) {
      yield left<FirestoreFailure, KtList<Contact>>(
          FirestoreFailure.unexpected());
    }
  }
}
