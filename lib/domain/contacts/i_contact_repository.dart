import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../core/firestore_failure.dart';
import 'contact.dart';

abstract class IContactRepository {
  Future<Either<FirestoreFailure, KtList<Contact>>> watchAll(int limit);

  Future<Either<FirestoreFailure, Unit>> create(Contact contact);
  Future<Either<FirestoreFailure, Unit>> update(Contact contact);
  Future<Either<FirestoreFailure, Unit>> dalete(Contact contact);
}
