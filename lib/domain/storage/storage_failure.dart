import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_failure.freezed.dart';

@freezed
class StorageFailure with _$StorageFailure {
  const factory StorageFailure.unexpected() = _Unexpected;
  const factory StorageFailure.insufficientPermissions() = _InsufficientPermissions;
}
