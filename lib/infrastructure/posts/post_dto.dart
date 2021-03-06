import '../../domain/core/value_objects.dart';
import '../../domain/posts/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/posts/post.dart';
import '../../domain/user/value_objects.dart';

part 'post_dto.freezed.dart';

part 'post_dto.g.dart';


@freezed
class PostDto with _$PostDto {
  const PostDto._();

  const factory PostDto(
          // ignore: invalid_annotation_target
          {
            
            required String id,
          required String imageUrl,
          required String pickupTime,
          required String description,
          required int quantity,
          required String username,
          required String title,
          required String postUserId,
          required String postPrice,
          @ServerTimestampConverter() required FieldValue serverTimeStamp}) =
      _PostDto;

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);

  factory PostDto.fromDomain(Post post) {
    return PostDto(
        id: post.id.getOrCrash(),
        postUserId: post.postUserId.getOrCrash(),
        description: post.description.getOrCrash(),
        imageUrl: post.imageUrl.getOrCrash(),
        pickupTime: post.pickupTime.getOrCrash(),
        quantity: post.quantity.getOrCrash(),
        title: post.title.getOrCrash(),
        username: post.username.getOrCrash(),
        postPrice: post.postPrice.getOrCrash(),
        serverTimeStamp: FieldValue.serverTimestamp());
  }

  Post toDomain() {
    return Post(
        id: UniqueId.fromUniqueString(id),
        username: Username(username),
        postPrice: PostPrice(postPrice),
        description: PostDescription(description),
        imageUrl: ImageUrl(imageUrl),
        pickupTime: PickupTime(pickupTime),
        quantity: PostQuantity(quantity),
        postUserId: PostUserId(postUserId),
        title: PostTitle(title));
  }

  // ignore: always_specify_types
  factory PostDto.fromFirestore(DocumentSnapshot doc) {
    return PostDto.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
  
  factory PostDto.fromMap(Map<String,dynamic> doc) {
    return PostDto.fromJson(doc);
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

