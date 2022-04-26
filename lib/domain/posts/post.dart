import 'package:dartz/dartz.dart';
import '../core/value_objects.dart';
import 'value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/failures.dart';

part 'post.freezed.dart';

@freezed
abstract class Post implements _$Post {
  const Post._();

  const factory Post(
      {required UniqueId id,
      required PostDescription description,
      required PostQuantity quantity,
      required PostTitle title,
      required PostImageUrl imageUrl,
      required PickupTime pickupTime,

      }) = _Post;

  factory Post.empty() => Post(
      id: UniqueId(),
     description: PostDescription(''),
      quantity: PostQuantity(PostQuantity.quantity[0]),
      imageUrl: PostImageUrl(''),
      pickupTime: PickupTime('7:00-9:00am'),
      title: PostTitle('')
      );

  Option<ValueFailure<dynamic>> get failureOption {
    // ignore: always_specify_types
    return description.failureOrUnit.fold((ValueFailure f) => some(f), (_) => none());
  }
}
