import 'dart:io';
import 'package:dartz/dartz.dart';
import 'storage_failure.dart';

abstract class IStorageRepository {
  Future<Either<StorageFailure, String>> upload({required File file,required  String fileId,required String storageFolder});
  Future<Either<StorageFailure, Unit>> delete(String fileId);
}
