import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'contact.dart';
import 'contact_failure.dart';

abstract class IContactRepository {
  Stream<Either<ContactFailure, KtList<Contact>>> watchAll();
  
  Future<Either<ContactFailure, Unit>> create(Contact contact);
  Future<Either<ContactFailure, Unit>> update(Contact contact);
  Future<Either<ContactFailure, Unit>> dalete(Contact contact);
}
