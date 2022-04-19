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
  Future<Either<StorageFailure, String>> upload(File file) async {
    final Reference storageRef = _firebaseStorage.ref();
    final Option<LocalUser> userOption = getIt<IAuthFacade>().getSignedInUser();
    final LocalUser user =
        userOption.getOrElse(() => throw NotAuthenticatedError());

    try {
      await storageRef.child(user.id.getOrCrash()).putFile(file);
      final String downloadUrl = await storageRef.child(user.id.getOrCrash()).getDownloadURL();
      print(downloadUrl);
      print("THISIS THE DOWNLOAD URL OKAY");
      return right(downloadUrl);
    } on firebase_core.FirebaseException catch (e) {
      print("AN ERROR OCCURED");
      print(e.toString());
      return left(const StorageFailure.insufficientPermissions());
    } catch (e) {
      print("UNEXPECTED ERROR OCCURED");
      return left(const StorageFailure.unexpected());
    }
  }
}
