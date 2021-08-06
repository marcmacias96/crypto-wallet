import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

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
  Future<Either<FirestoreFailure, KtList<Contact>>> watchAll(int limit) async {
    try {
      final userDoc = await _firestore.userDocument();
      final reference = userDoc.walletCollection
          .doc(UserPreference.getWalletId())
          .contactCollection;
      final query = reference.orderBy('name').limit(limit);
      final snapshot = await query.get();

      return right(snapshot.docs
          .map((doc) => ContactDto.fromJson(doc.data() as Map<String, dynamic>)
              .toDomain())
          .toImmutableList());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const FirestoreFailure.insufficientPermissions());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    }
  }
}
