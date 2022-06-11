import 'package:dartz/dartz.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/user.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Option<LocalUser> getSignedInUser();
  Future<Either<AuthFailure, Unit>> sendResetEmail(
      {required EmailAddress emailAddress});
  Future<Either<AuthFailure, Unit>> signOut();
  Future<Either<AuthFailure, Unit>> deleteUser();
}
