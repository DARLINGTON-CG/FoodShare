import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import '../../domain/core/errors.dart';
import '../../domain/posts/value_objects.dart';
import '../../domain/storage/i_storage_repository.dart';
import '../../domain/storage/storage_failure.dart';
import '../../injector.dart';
import 'post_dto.dart';
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
  Future<Either<PostFailure, Unit>> create(Post post, File file) async {
    try {
      //  final Option<LocalUser> userOption = getIt<IAuthFacade>().getSignedInUser();
      //   final LocalUser user =
      //   userOption.getOrElse(() => throw NotAuthenticatedError());

      final Post postForUpload = await getIt<IStorageRepository>()
          .upload(file,post.id.getOrCrash())
          .then((Either<StorageFailure, String> imageUrl) => post.copyWith(
              imageUrl:
                  PostImageUrl(imageUrl.getOrElse(() => throw Exception()))));

      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.userDocument();

      final PostDto postDto = PostDto.fromDomain(postForUpload);
      await userDoc.doc(postDto.id).set(postDto.toJson());
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
      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.userDocument();
      final String postId = post.id.getOrCrash();

      await userDoc
          //FIXING RECTIFY POST ID
          // .postCollection
          .doc(postId)
          .delete();
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
      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.userDocument();
      final PostDto postDto = PostDto.fromDomain(post);

      await userDoc
          //FIXING HOW USER UPDATES DOCUMENT NOW
          //.postCollection
          .doc(postDto.id)
          .update(postDto.toJson());
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
    final CollectionReference<Object?> userDoc =
        await _firebaseFirestore.userDocument();

    yield* userDoc
        //.postCollection
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
    // yield* userDoc.postCollection
    //     .orderBy('serverTimeStamp', descending: true)
    //     .snapshots()
    //     .map((QuerySnapshot<Object?> snapshots) =>
    //         right<PostFailure, KtList<Post>>(snapshots.docs
    //             .map((QueryDocumentSnapshot<Object?> doc) =>
    //                 PostDto.fromFirestore(doc).toDomain())
    //             .toImmutableList()))
    //     .onErrorReturnWith((Object error, StackTrace stackTrace) {

    //   if (error is PlatformException &&
    //       error.message!.contains("PERMISSION_DENIED")) {
    //     return left(const PostFailure.insufficientPermissions());
    //   } else {
    //     return left(const PostFailure.unexpected());
    //   }
    // });
  }

  @override
  Stream<Either<PostFailure, KtList<Post>>> watchAllUncompleted() async* {
    final CollectionReference<Object?> userDoc =
        await _firebaseFirestore.userDocument();
    yield* userDoc
        //.postCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((QuerySnapshot<Object?> snapshots) => snapshots.docs.map(
            (QueryDocumentSnapshot<Object?> doc) =>
                PostDto.fromFirestore(doc).toDomain()))
        .map((Iterable<Post> post) =>
            right<PostFailure, KtList<Post>>(post.toImmutableList()))
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
