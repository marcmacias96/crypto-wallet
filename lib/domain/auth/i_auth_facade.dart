import 'package:dartz/dartz.dart';
import 'auth_failure.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
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

  Future<void> signOut();
}
enum AccountType { old, fresh }