import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_failure.freezed.dart';

@freezed
class PostFailure with _$PostFailure {
  const factory PostFailure.unexpected() = _Unexpected;
  const factory PostFailure.insufficientPermissions() = _InsufficientPermissions;
  const factory PostFailure.unableToUpdate() = _UnableToUpdate;
}
