import '../../domain/core/value_objects.dart';
import '../../domain/posts/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/posts/post.dart';

part 'post_dto.freezed.dart';

part 'post_dto.g.dart';

@freezed
class PostDto with _$PostDto {
  const PostDto._();

  const factory PostDto(
      // ignore: invalid_annotation_target
      {@JsonKey(ignore: true) String? id,
      required String body,
      required String name,
      required String option,
      @ServerTimestampConverter() required  FieldValue serverTimeStamp}) = _PostDto;

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);

  factory PostDto.fromDomain(Post post) {
    return PostDto(
        id: post.id.getOrCrash(),
        body: post.body.getOrCrash(),
        name: post.name.getOrCrash(),
        option: post.option.getOrCrash(),
        serverTimeStamp: FieldValue.serverTimestamp());
  }

  Post toDomain() {
    return Post(
        id: UniqueId.fromUniqueString(id!),
        name: PostName(body),
        body: PostBody(body),
        option: PostOption(option));
  }

  // ignore: always_specify_types
  factory PostDto.fromFirestore(DocumentSnapshot doc) {
    return PostDto.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
