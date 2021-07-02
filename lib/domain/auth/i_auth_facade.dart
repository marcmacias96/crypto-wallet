import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';
import 'auth_failure.dart';
import 'user.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, AccountType>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, AccountType>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, AccountType>> signInWithGoogle();
  Future<Either<AuthFailure, AccountType>> signInWithFacebook();
  Future<Either<FirestoreFailure, User>> getUser();
  Future<void> signOut();
  bool isSignedInUser();
}

enum AccountType { old, fresh }
