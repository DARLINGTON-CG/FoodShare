import 'dart:io';
import 'package:dartz/dartz.dart';

import 'user_data.dart';
import 'user_data_failure.dart';

abstract class IUserRepository {
  Stream<Either<UserDataFailure, Unit>> observeAllUsernames();
  Future<Either<UserDataFailure, UserData>> getUserData();
  Future<Either<UserDataFailure, Unit>> create(UserData data, File file);
  Future<Either<UserDataFailure, Unit>> update(UserData data, File? file);
  Future<Either<UserDataFailure, Unit>> delete(UserData data);
}
