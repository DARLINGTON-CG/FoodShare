import 'package:dartz/dartz.dart';
import 'package:foodshare/domain/core/value_objects.dart';
import 'package:foodshare/domain/posts/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/failures.dart';

part 'post.freezed.dart';

@freezed
abstract class Post implements _$Post {
  const Post._();

  const factory Post(
      {required UniqueId id,
      required PostBody body,
      required PostOption option,
      required PostName name}) = _Post;

  factory Post.empty() => Post(
      id: UniqueId(),
      body: PostBody(''),
      option: PostOption(PostOption.userOptions[0]),
      name: PostName(''));

  Option<ValueFailure<dynamic>> get failureOption {
    // ignore: always_specify_types
    return body.failureOrUnit.fold((ValueFailure f) => some(f), (_) => none());
  }
}