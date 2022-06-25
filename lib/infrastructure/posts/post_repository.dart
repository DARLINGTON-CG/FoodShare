import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import '../../domain/core/errors.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/posts/value_objects.dart';
import '../../domain/storage/i_storage_repository.dart';
import '../../domain/storage/storage_failure.dart';
import '../../domain/user/i_user_repository.dart';
import '../../domain/user/user_data_failure.dart';
import '../../domain/user/user_data.dart';
import '../../domain/user/value_objects.dart';
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
      final Option<LocalUser> userOption =
          getIt<IAuthFacade>().getSignedInUser();
      final LocalUser user =
          userOption.getOrElse(() => throw NotAuthenticatedError());

      final Either<UserDataFailure, UserData> userData =
          await getIt<IUserRepository>().getUserData();
      final Username username =
          userData.fold((UserDataFailure userDataFailure) {
        if (userDataFailure == const UserDataFailure.notAvailable()) {
          throw const PostFailure.nonExistentUser();
        } else {
          throw const PostFailure.unexpected();
        }
      }, (UserData userData) => userData.username);

      final Post postForUpload = await getIt<IStorageRepository>()
          .upload(file: file,fileId: post.id.getOrCrash(),storageFolder: user.id.getOrCrash())
          .then((Either<StorageFailure, String> imageUrl) => post.copyWith(
              postUserId: PostUserId(user.id.getOrCrash()),
              username: username,
              imageUrl: ImageUrl(imageUrl.getOrElse(() => throw Exception()))));

      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.postDocuments();

      final PostDto postDto = PostDto.fromDomain(postForUpload);
      await userDoc.doc(postDto.id).set(postDto.toJson());
      return right(unit);
    } catch (e) {
       
      if (e.toString().toLowerCase().contains("permission-denied")) {
        return left(const PostFailure.insufficientPermissions());
      } else if (e == const PostFailure.nonExistentUser()) {
        return left(const PostFailure.nonExistentUser());
      }
       else  {
        return left(const PostFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PostFailure, Unit>> delete(Post post) async {
    try {
      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.postDocuments();
      final String postId = post.id.getOrCrash();
      await getIt<IStorageRepository>().delete(post.imageUrl.getOrCrash());

      await userDoc.doc(postId).delete();
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
  Future<Either<PostFailure, Unit>> update(Post post, File? file) async {
    try {
      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.postDocuments();
       final Option<LocalUser> userOption = getIt<IAuthFacade>().getSignedInUser();
    final LocalUser user =
        userOption.getOrElse(() => throw NotAuthenticatedError());
      if (file == null) {
        final PostDto postDto = PostDto.fromDomain(post);

        await userDoc.doc(postDto.id).update(postDto.toJson());
      } else {
        final Post postForUpload = await getIt<IStorageRepository>()
            .upload(file: file,fileId: post.id.getOrCrash(),storageFolder: user.id.getOrCrash())
            .then((Either<StorageFailure, String> imageUrl) => post.copyWith(
                imageUrl:
                    ImageUrl(imageUrl.getOrElse(() => throw Exception()))));
        final PostDto postDto = PostDto.fromDomain(postForUpload);
        await userDoc.doc(postDto.id).update(postDto.toJson());
      }
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
  Stream<Either<PostFailure, KtList<Post>>> watchAllFree() async* {
    final CollectionReference<Object?> postDoc =
        await _firebaseFirestore.postDocuments();

    final Option<LocalUser> userOption = getIt<IAuthFacade>().getSignedInUser();
    final LocalUser user =
        userOption.getOrElse(() => throw NotAuthenticatedError());

    yield* postDoc
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((QuerySnapshot<Object?> snapshots) => snapshots.docs.map(
            (QueryDocumentSnapshot<Object?> doc) =>
                PostDto.fromFirestore(doc).toDomain()))
        .map((Iterable<Post> posts) => right<PostFailure, KtList<Post>>(posts
            .where((Post post) =>
                (post.postUserId.value.getOrElse(() => throw Exception()) !=
                    user.id.getOrCrash()) &&
                double.tryParse(post.postPrice.getOrCrash().toString())! == 0.0)
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
  Stream<Either<PostFailure, KtList<Post>>> watchAllPaid() async* {
    final CollectionReference<Object?> userDoc =
        await _firebaseFirestore.postDocuments();

    final Option<LocalUser> userOption = getIt<IAuthFacade>().getSignedInUser();
    final LocalUser user =
        userOption.getOrElse(() => throw NotAuthenticatedError());

    yield* userDoc
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((QuerySnapshot<Object?> snapshots) => snapshots.docs.map(
            (QueryDocumentSnapshot<Object?> doc) =>
                PostDto.fromFirestore(doc).toDomain()))
        .map((Iterable<Post> posts) => right<PostFailure, KtList<Post>>(posts
            .where((Post post) =>
                (post.postUserId.value.getOrElse(() => throw Exception()) !=
                    user.id.getOrCrash()) &&
                double.tryParse(post.postPrice.getOrCrash().toString())! > 0.0)
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
  Stream<Either<PostFailure, KtList<Post>>> watchAll() async* {
    final CollectionReference<Object?> userDoc =
        await _firebaseFirestore.postDocuments();

    final Option<LocalUser> userOption = getIt<IAuthFacade>().getSignedInUser();
    final LocalUser user =
        userOption.getOrElse(() => throw NotAuthenticatedError());

    yield* userDoc
        .where('postUserId', isEqualTo: user.id.getOrCrash())
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
