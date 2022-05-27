import '../../domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/user/user_data.dart';
import '../../domain/user/value_objects.dart';

part 'user_data_dto.freezed.dart';

part 'user_data_dto.g.dart';

@freezed
class UserDataDto with _$UserDataDto {
  const UserDataDto._();

  const factory UserDataDto({
    required String imageUrl,
    required String username,
    required String userId,
  }) = _UserDataDto;

  factory UserDataDto.fromJson(Map<String, dynamic> json) =>
      _$UserDataDtoFromJson(json);

  factory UserDataDto.fromDomain(UserData userData) {
    return UserDataDto(
        imageUrl: userData.imageUrl.getOrCrash(),
        username: userData.username.getOrCrash(),
        userId:  userData.userId.getOrCrash()
        );
  }

  UserData toDomain() {
    return UserData(
      username: Username(username),
      imageUrl: ImageUrl(imageUrl),
      userId: UserId(userId)
    );
  }

  // ignore: always_specify_types
  factory UserDataDto.fromFirestore(DocumentSnapshot doc) {
    return UserDataDto.fromJson(doc.data()! as Map<String, dynamic>);
  }

  factory UserDataDto.fromMap(Map<String,dynamic> doc) {
    return UserDataDto.fromJson(doc);
  }
}
