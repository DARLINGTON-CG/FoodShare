import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_failure.freezed.dart';

@freezed
class UserDataFailure with _$UserDataFailure {
  const factory UserDataFailure.unexpected() = _Unexpected;
  const factory UserDataFailure.insufficientPermissions() =
      _InsufficientPermissions;
  const factory UserDataFailure.notAvailable() = _NotAvailable;
  const factory UserDataFailure.usernameUnavailable() = _UsernameNotAvailable;
}
