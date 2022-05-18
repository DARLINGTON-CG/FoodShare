import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_failure.freezed.dart';

@freezed
class MessageFailure with _$MessageFailure {
  const factory MessageFailure.unexpected() = _Unexpected;
  const factory MessageFailure.insufficientPermissions() =
      _InsufficientPermissions;
  const factory MessageFailure.unableToUpdate() = _UnableToUpdate;
  const factory MessageFailure.nonExistentUser() = _NonExistentUser;
}
