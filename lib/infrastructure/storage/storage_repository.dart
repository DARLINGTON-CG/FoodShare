import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;

import 'dart:io';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import '../../domain/core/errors.dart';
import '../../domain/storage/i_storage_repository.dart';
import '../../domain/storage/storage_failure.dart';
import '../../injector.dart';

@LazySingleton(as: IStorageRepository)
class StorageRepository implements IStorageRepository {
  final FirebaseStorage _firebaseStorage;

  StorageRepository(this._firebaseStorage);

  @override
  Future<Either<StorageFailure, String>> upload(
      File file, String fileId) async {
    final Reference storageRef = _firebaseStorage.ref();
    final Option<LocalUser> userOption = getIt<IAuthFacade>().getSignedInUser();
    final LocalUser user =
        userOption.getOrElse(() => throw NotAuthenticatedError());

    try {
      await storageRef.child(user.id.getOrCrash()).child(fileId).putFile(file);
      final String downloadUrl = await storageRef
          .child(user.id.getOrCrash())
          .child(fileId)
          .getDownloadURL();
      return right(downloadUrl);
    } on firebase_core.FirebaseException catch (e) {
      if (e.toString().contains("unauthorized")) {
        return left(const StorageFailure.insufficientPermissions());
      } else {
        return left(const StorageFailure.unexpected());
      }
    } catch (_) {
      return left(const StorageFailure.unexpected());
    }
  }
}
