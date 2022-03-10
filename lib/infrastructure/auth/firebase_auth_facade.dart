import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:foodshare/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:foodshare/domain/auth/i_auth_facade.dart';
import 'package:foodshare/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  FirebaseAuthFacade(this._firebaseAuth);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final String emailAddressString = emailAddress.getOrCrash();
    final String passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressString, password: passwordString);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async{
   final String emailAddressString = emailAddress.getOrCrash();
    final String passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressString, password: passwordString);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found' ) {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }
}
