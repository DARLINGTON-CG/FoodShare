import 'dart:io';
import 'package:dartz/dartz.dart';
import 'storage_failure.dart';

abstract class IStorageRepository {
  Future<Either<StorageFailure, String>> upload(File file,String fileId);
  // Future<Either<UploadFailure, Unit>> download(File file);
  Future<Either<StorageFailure, Unit>> delete(String fileId);
}
