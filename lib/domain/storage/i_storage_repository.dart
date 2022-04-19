import 'dart:io';
import 'package:dartz/dartz.dart';
import 'storage_failure.dart';

abstract class IStorageRepository {
  Future<Either<StorageFailure, String>> upload(File file);
  // Future<Either<UploadFailure, Unit>> download(File file);
  // Future<Either<UploadFailure, Unit>> delete(File file);
}
