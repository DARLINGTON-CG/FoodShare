import '../core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class LocalUser with _$LocalUser {
  const factory LocalUser({
    required UniqueId id,
  }) = _LocalUser;
}
