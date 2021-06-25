import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/value_objects.dart';


@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookLogin _facebookLogin;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn, this._facebookLogin);


  @override
  Future<Either<AuthFailure, AccountType>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password
  }) async{
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try{
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressStr,
          password: passwordStr
      );
      return right(AccountType.fresh);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, AccountType>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try{
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressStr,
          password: passwordStr
      );
      return right(AccountType.old);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, AccountType>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken
      );
      final authResult = await _firebaseAuth.signInWithCredential(authCredential);
      return right(authResult.additionalUserInfo!.isNewUser
          ? AccountType.fresh
          : AccountType.old);
    } on FirebaseAuthException catch (e) {
      if (e.code == "account-exists-with-different-credential") {
        return left(const AuthFailure.accountAlreadyExists());
      }
      return left(const AuthFailure.serverError());
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, AccountType>> signInWithFacebook() async {
    try {
      var facebookUser = await _facebookLogin.logIn(permissions: [
        FacebookPermission.publicProfile,
        FacebookPermission.email,
      ]);
      if (facebookUser.status != FacebookLoginStatus.success) {
        return left(const AuthFailure.cancelledByUser());
      }
      final accessToken = facebookUser.accessToken!.token;
      final authCredential = FacebookAuthProvider.credential(accessToken);

      final authResult =
          await _firebaseAuth.signInWithCredential(authCredential);

      return right(authResult.additionalUserInfo!.isNewUser
          ? AccountType.fresh
          : AccountType.old);

    } on FirebaseAuthException catch (e) {
      if (e.code == "account-exists-with-different-credential") {
        return left(const AuthFailure.accountAlreadyExists());
      }
      return left(const AuthFailure.serverError());
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }


  @override
  Future<void> signOut() => Future.wait([
    _googleSignIn.signOut(),
    _firebaseAuth.signOut(),
    _facebookLogin.logOut()
  ]);
}