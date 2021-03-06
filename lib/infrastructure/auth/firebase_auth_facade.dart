import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as _auth;
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/core/firestore_failure.dart';
import '../../utils/user_preference.dart';
import '../core/firestore_helpers.dart';
import 'firebase_user_mapper.dart';
import 'user_dto.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final _auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookLogin;
  final FirebaseFirestore _firestore;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn,
      this._facebookLogin, this._firestore);

  @override
  Future<Either<AuthFailure, AccountType>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      return right(AccountType.fresh);
    } on _auth.FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, AccountType>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      return right(AccountType.old);
    } on _auth.FirebaseAuthException catch (e) {
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

      final authCredential = _auth.GoogleAuthProvider.credential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken);
      final authResult =
          await _firebaseAuth.signInWithCredential(authCredential);
      return right(authResult.additionalUserInfo!.isNewUser
          ? AccountType.fresh
          : AccountType.old);
    } on _auth.FirebaseAuthException catch (e) {
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
      var facebookUser = await _facebookLogin.login(permissions: [
        'public_profile',
        'email',
      ]);
      if (facebookUser.accessToken != null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final accessToken = facebookUser.accessToken!.token;
      final authCredential = _auth.FacebookAuthProvider.credential(accessToken);

      final authResult =
          await _firebaseAuth.signInWithCredential(authCredential);

      return right(authResult.additionalUserInfo!.isNewUser
          ? AccountType.fresh
          : AccountType.old);
    } on _auth.FirebaseAuthException catch (e) {
      if (e.code == "account-exists-with-different-credential") {
        return left(const AuthFailure.accountAlreadyExists());
      }
      return left(const AuthFailure.serverError());
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async => await Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
        _facebookLogin.logOut()
      ]);

  @override
  Future<Option<User>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<Either<FirestoreFailure, User>> getUser() async {
    try {
      final userDoc = await _firestore.userDocument();
      final userSnapShot = await userDoc.get();

      if (userSnapShot.exists) {
        return right(UserDto.fromFirestore(userSnapShot).toDomain());
      } else {
        return left(userSnapShot.metadata.isFromCache
            ? FirestoreFailure.noInternet()
            : FirestoreFailure.doesNotExist());
      }
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const FirestoreFailure.insufficientPermissions());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    }
  }

  @override
  bool isSignedInUser() {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      UserPreference.setUserId(user.uid);
      return true;
    }
    return false;
  }

  @override
  Future<Either<AuthFailure, AccountType>> changePassword(
      {required String password,
      required String newpassword,
      required String confirmpassword}) async {
    final user = await _firebaseAuth.currentUser;

    final authCredential = _auth.EmailAuthProvider.credential(
      email: user!.email!,
      password: password,
    );

    try {
      final authResult =
          await user.reauthenticateWithCredential(authCredential);
      if (authResult.user != null) {
        await user.updatePassword(newpassword);
        return right(AccountType.old);
      }
      return left(const AuthFailure.serverError());
    } on _auth.FirebaseAuthException catch (e) {
      print(e);
      return left(const AuthFailure.serverError());
    }
  }
}
