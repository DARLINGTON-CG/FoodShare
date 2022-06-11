import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;

import 'dart:io';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import '../../domain/core/errors.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/messaging/chat_room.dart';
import '../../domain/messaging/i_message_repository.dart';
import '../../domain/posts/i_post_repository.dart';
import '../../domain/posts/post.dart';
import '../../domain/storage/i_storage_repository.dart';
import '../../domain/storage/storage_failure.dart';
import '../../domain/user/i_user_repository.dart';
import '../../domain/user/user_data_failure.dart';
import '../../domain/user/user_data.dart';
import '../../domain/user/value_objects.dart';
import '../../injector.dart';
import '../core/firebase_helpers.dart';
import '../messaging/chat_room_dto.dart';
import '../posts/post_dto.dart';
import 'user_data_dto.dart';

@LazySingleton(as: IUserRepository)
class UserDataRepository extends IUserRepository {
  final FirebaseFirestore _firebaseFirestore;

  UserDataRepository(this._firebaseFirestore);

  @override
  Future<Either<UserDataFailure, Unit>> create(UserData data, File file) async {
    try {
      final Option<LocalUser> userOption =
          getIt<IAuthFacade>().getSignedInUser();
      final LocalUser user =
          userOption.getOrElse(() => throw NotAuthenticatedError());

      final Either<UserDataFailure, Unit> returnedData =
          await checkAvailability(data.username.getOrCrash().trim());
      //Modifications soon
      returnedData.fold(
          (UserDataFailure l) =>
              throw const UserDataFailure.usernameUnavailable(), (_) {
        return null;
      });

      final UserData dataForUpload = await getIt<IStorageRepository>()
          .upload(file, user.id.getOrCrash())
          .then((Either<StorageFailure, String> imageUrl) => data.copyWith(
              username: Username(data.username.getOrCrash().trim()),
              userId: UserId(user.id.getOrCrash()),
              imageUrl: ImageUrl(imageUrl.getOrElse(() => throw Exception()))));

      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.userDocuments();

      final UserDataDto userDto = UserDataDto.fromDomain(dataForUpload);
      await userDoc.doc(user.id.getOrCrash()).set(userDto.toJson());
      return right(unit);
    } catch (e) {
      if (e.toString().toLowerCase().contains("permission-denied")) {
        return left(const UserDataFailure.insufficientPermissions());
      } else if (e == const UserDataFailure.usernameUnavailable()) {
        return left(const UserDataFailure.usernameUnavailable());
      } else {
        return left(const UserDataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserDataFailure, Unit>> delete(UserData data) async {
    try {
      final Option<LocalUser> userOption =
          getIt<IAuthFacade>().getSignedInUser();
      final LocalUser user =
          userOption.getOrElse(() => throw NotAuthenticatedError());
      //Pass this value to delete messages function to form id
    
      final String username = data.username.getOrCrash();
      // Delete user data section - deleting also profile pictures
    
      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.userDocuments();

      await userDoc.doc(user.id.getOrCrash()).delete();
      await getIt<IStorageRepository>().delete(data.imageUrl.getOrCrash());

      //Delete documents user created
      final CollectionReference<Object?> postDoc =
          await _firebaseFirestore.postDocuments();

      final Iterable<Post> postCollection = await postDoc
          .where('postUserId', isEqualTo: user.id.getOrCrash())
          .get()
          .then(
              (QuerySnapshot<Object?> value) => value.docs.map(
                  (QueryDocumentSnapshot<Object?> doc) =>
                      PostDto.fromFirestore(doc).toDomain()),
              // ignore: always_specify_types
              onError: (e) => throw Exception());
      for (Post post in postCollection) {
        await getIt<IPostRepository>().delete(post);
      }

      //Delete chats that user is part of
      final CollectionReference<Object?> chatDoc =
          await _firebaseFirestore.chatDocuments();

      final Iterable<ChatRoom> chatCollection = await chatDoc
          .where(
            'chatIds',
            arrayContains: user.id.getOrCrash(),
          )
          .get()
          .then(
              (QuerySnapshot<Object?> value) => value.docs.map(
                  (QueryDocumentSnapshot<Object?> doc) =>
                      ChatRoomDto.fromFirestore(doc).toDomain()),
              // ignore: always_specify_types
              onError: (e) => throw Exception());
      for (ChatRoom chat in chatCollection) {
        await getIt<IMessageRepository>().delete(chat, username);
      }

      //Delete user auth record
      await getIt<IAuthFacade>().deleteUser();
      await getIt<IAuthFacade>().signOut();

      return right(unit);
    } catch (e) {
     
      return left(const UserDataFailure.unexpected());
    }
  }

  @override
  Future<Either<UserDataFailure, Unit>> checkAvailability(
      String username) async {
    try {
      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.userDocuments();

      final QuerySnapshot<Object?> document = await userDoc.get();
      if (document.docs.isNotEmpty) {
        final bool result =
            document.docs.where((QueryDocumentSnapshot<Object?> element) {
          return UserDataDto.fromFirestore(element)
                  .toDomain()
                  .username
                  .getOrCrash() ==
              username;
        }).isEmpty;
        if (result) {
          return right(unit);
        } else {
          return left(const UserDataFailure.usernameUnavailable());
        }
      } else {
        return right(unit);
      }
    } catch (e) {
      return left(const UserDataFailure.unexpected());
    }
  }

  @override
  Future<Either<UserDataFailure, Unit>> update(UserData data, File? file) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Either<UserDataFailure, UserData>> getUserData() async {
    try {
      final Option<LocalUser> userOption =
          getIt<IAuthFacade>().getSignedInUser();
      final LocalUser user =
          userOption.getOrElse(() => throw NotAuthenticatedError());

      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.userDocuments();

      final DocumentSnapshot<Object?> doc =
          await userDoc.doc(user.id.getOrCrash()).get();
      if (doc.exists) {
        final UserData userData = UserDataDto.fromFirestore(doc).toDomain();
        return right(userData);
      } else {
        return left(const UserDataFailure.notAvailable());
      }
    } on firebase_core.FirebaseException catch (e) {
      if (e.toString().contains("unauthorized")) {
        return left(const UserDataFailure.insufficientPermissions());
      } else {
        return left(const UserDataFailure.unexpected());
      }
    } catch (e) {
      return left(const UserDataFailure.unexpected());
    }
  }
}
