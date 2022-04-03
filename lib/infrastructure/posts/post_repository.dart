import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:foodshare/domain/core/value_objects.dart';
import 'package:foodshare/infrastructure/posts/post_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '/domain/posts/i_post_repository.dart';
import '/domain/posts/post.dart';
import '/domain/posts/post_failure.dart';
import '../core/firebase_helpers.dart';

@LazySingleton(as: IPostRepository)
class PostRepository implements IPostRepository {
  final FirebaseFirestore _firebaseFirestore;

  PostRepository(this._firebaseFirestore);

  @override
  Future<Either<PostFailure, Unit>> create(Post post) async {
    try {
      final DocumentReference<Object?> userDoc =
          await _firebaseFirestore.userDocument();
      final PostDto postDto = PostDto.fromDomain(post);

      await userDoc.postCollection.doc(postDto.id).set(postDto.toJson());
      return right(unit);
    } catch (e) {
      if (e.toString().toLowerCase().contains("permission-denied")) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PostFailure, Unit>> delete(Post post) async {
    try {
      final DocumentReference<Object?> userDoc =
          await _firebaseFirestore.userDocument();
      final String postId = post.id.getOrCrash();

      await userDoc.postCollection.doc(postId).delete();
      return right(unit);
    } catch (e) {
      if (e.toString().toLowerCase().contains("permission-denied")) {
        return left(const PostFailure.insufficientPermissions());
      } else if (e.toString().toLowerCase().contains("not-found")) {
        return left(const PostFailure.unableToUpdate());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PostFailure, Unit>> update(Post post) async {
    try {
      final DocumentReference<Object?> userDoc =
          await _firebaseFirestore.userDocument();
      final PostDto postDto = PostDto.fromDomain(post);

      await userDoc.postCollection.doc(postDto.id).update(postDto.toJson());
      return right(unit);
    } catch (e) {
      if (e.toString().toLowerCase().contains("permission-denied")) {
        return left(const PostFailure.insufficientPermissions());
      } else if (e.toString().toLowerCase().contains("not-found")) {
        return left(const PostFailure.unableToUpdate());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<PostFailure, KtList<Post>>> watchAll() async* {
    final DocumentReference<Object?> userDoc =
        await _firebaseFirestore.userDocument();
    yield* userDoc.postCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((QuerySnapshot<Object?> snapshots) =>
            right<PostFailure, KtList<Post>>(snapshots.docs
                .map((QueryDocumentSnapshot<Object?> doc) =>
                    PostDto.fromFirestore(doc).toDomain())
                .toImmutableList()))
        .onErrorReturnWith((Object error, StackTrace stackTrace) {
      if (error is PlatformException &&
          error.message!.contains("PERMISSION_DENIED")) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<PostFailure, KtList<Post>>> watchAllUncompleted() async* {
    final DocumentReference<Object?> userDoc =
        await _firebaseFirestore.userDocument();
    yield* userDoc.postCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((QuerySnapshot<Object?> snapshots) => snapshots.docs.map(
            (QueryDocumentSnapshot<Object?> doc) =>
                PostDto.fromFirestore(doc).toDomain()))
        .map((Iterable<Post> post) => right<PostFailure, KtList<Post>>(post
            .where((Post pt) => pt.option.getOrCrash().contains('Free'))
            .toImmutableList()))
        .onErrorReturnWith((Object error, StackTrace stackTrace) {
      if (error is PlatformException &&
          error.message!.contains("PERMISSION_DENIED")) {
        return left(const PostFailure.insufficientPermissions());
      } else {
        return left(const PostFailure.unexpected());
      }
    });
  }
}
