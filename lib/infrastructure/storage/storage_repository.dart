import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;

import 'dart:io';

import '../../domain/storage/i_storage_repository.dart';
import '../../domain/storage/storage_failure.dart';

@LazySingleton(as: IStorageRepository)
class StorageRepository implements IStorageRepository {
  final FirebaseStorage _firebaseStorage;

  StorageRepository(this._firebaseStorage);

  @override
  Future<Either<StorageFailure, String>> upload({
      required File file,required  String fileId,required String storageFolder}) async {
    final Reference storageRef = _firebaseStorage.ref();

    try {
      await storageRef.child(storageFolder).child(fileId).putFile(file);
      final String downloadUrl = await storageRef
          .child(storageFolder)
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

  @override
  Future<Either<StorageFailure, Unit>> delete(String fileUrl) async {
    try {
      await _firebaseStorage.refFromURL(fileUrl).delete();
      return right(unit);
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
