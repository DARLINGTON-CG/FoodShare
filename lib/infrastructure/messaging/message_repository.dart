import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import '../../domain/core/errors.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/messaging/chat_room.dart';
import '../../domain/messaging/i_message_repository.dart';
import '../../domain/messaging/message.dart';
import '../../domain/messaging/message_failure.dart';
import '../../domain/messaging/value_objects.dart';
import '../../domain/storage/i_storage_repository.dart';
import '../../domain/storage/storage_failure.dart';
import '../../injector.dart';
import '../core/firebase_helpers.dart';
import 'chat_room_dto.dart';

@LazySingleton(as: IMessageRepository)
class MessageRepository implements IMessageRepository {
  final FirebaseFirestore _firebaseFirestore;

  MessageRepository(this._firebaseFirestore);

  @override
  Stream<Either<MessageFailure, KtList<ChatRoom>>> readAll() async* {
    final CollectionReference<Object?> userDoc =
        await _firebaseFirestore.chatDocuments();

    final Option<LocalUser> userOption = getIt<IAuthFacade>().getSignedInUser();
    final LocalUser user =
        userOption.getOrElse(() => throw NotAuthenticatedError());

    yield* userDoc
        .where(
          'chatIds',
          arrayContains: user.id.getOrCrash(),
        )
        .snapshots()
        .map((QuerySnapshot<Object?> snapshots) =>
            snapshots.docs.map((QueryDocumentSnapshot<Object?> doc) {
              return ChatRoomDto.fromFirestore(doc).toDomain();
            }))
        .map((Iterable<ChatRoom> chat) {
      return right<MessageFailure, KtList<ChatRoom>>(chat.toImmutableList());
    }).onErrorReturnWith((Object error, StackTrace stackTrace) {
      if (error is PlatformException &&
          error.message!.contains("permission-denied")) {
        return left(const MessageFailure.insufficientPermissions());
      } else {
        return left(const MessageFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<MessageFailure, Unit>> send(
      {required ChatRoom chat,
      required File? file,
      required bool isFile}) async {
    print("isUpdate");
    try {
      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.chatDocuments();

      if (isFile) {
        final Message messageForUpload = await getIt<IStorageRepository>()
            .upload(
                file: file!,
                storageFolder: chat.post.id.getOrCrash() +
                    chat.requester.username.getOrCrash(),
                fileId: UniqueId().value.getOrElse(() => throw Exception))
            .then((Either<StorageFailure, String> imageUrl) => chat.messages
                .getOrCrash()
                .iter
                .last
                .copyWith(
                    message: MessageBody(
                        imageUrl.getOrElse(() => throw Exception))));
        List<Message> converted = <Message>[];
        converted.add(messageForUpload);
        final ChatRoom chatRoomForUpload = chat.copyWith(
            messages: MessageList<Message>(
                converted.map((Message message) => message).toImmutableList()));

        await userDoc
            .doc(chatRoomForUpload.post.id.getOrCrash() +
                chatRoomForUpload.requester.username.getOrCrash())
            .set(ChatRoomDto.fromDomain(chatRoomForUpload).toJson());
        // await userDoc
        //     .doc(chat.post.id.getOrCrash() +
        //         chat.requester.username.getOrCrash())
        //     // ignore: always_specify_types
        //     .update({
        //   // ignore: always_specify_types
        //   "messages": FieldValue.arrayUnion(
        //       // ignore: always_specify_types
        //       [MessagesDto.fromDomain(messageForUpload).toJson()])
        // });

      } else {
        await userDoc
            .doc(chat.post.id.getOrCrash() +
                chat.requester.username.getOrCrash())
            .set(ChatRoomDto.fromDomain(chat).toJson());
      }

      return right(unit);
    } catch (e) {
      if (e.toString().toLowerCase().contains("permission-denied")) {
        return left(const MessageFailure.insufficientPermissions());
      } else {
        return left(const MessageFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<MessageFailure, Unit>> delete(
      ChatRoom chat, String username) async {
    try {
      final CollectionReference<Object?> chatDoc =
          await _firebaseFirestore.userDocuments();

      await chatDoc.doc(chat.post.id.getOrCrash() + username).delete();
      return right(unit);
    } catch (e) {
      if (e.toString().toLowerCase().contains("permission-denied")) {
        return left(const MessageFailure.insufficientPermissions());
      } else if (e.toString().toLowerCase().contains("not-found")) {
        return left(const MessageFailure.unableToUpdate());
      } else {
        return left(const MessageFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<MessageFailure, Unit>> sendUpdate(
      ChatRoom chat, Message message, File? file) async {
    try {
      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.chatDocuments();

  

      if (message.messageType == "File") {
        print("File business started");
        final Message messageForUpload = await getIt<IStorageRepository>()
            .upload(
                file: file!,
                storageFolder: chat.post.id.getOrCrash() +
                    chat.requester.username.getOrCrash(),
                fileId: UniqueId().value.getOrElse(() => throw Exception))
            .then((Either<StorageFailure, String> imageUrl) => message.copyWith(
                message:
                    MessageBody(imageUrl.getOrElse(() => throw Exception))));

        await userDoc
            .doc(chat.post.id.getOrCrash() +
                chat.requester.username.getOrCrash())
            // ignore: always_specify_types
            .update({
          // ignore: always_specify_types
          "messages": FieldValue.arrayUnion(
              // ignore: always_specify_types
              [MessagesDto.fromDomain(messageForUpload).toJson()])
        });

        print("File business completed");
      } else {
        await userDoc
            .doc(chat.post.id.getOrCrash() +
                chat.requester.username.getOrCrash())
            // ignore: always_specify_types
            .update({
          // ignore: always_specify_types
          "messages":
              // ignore: always_specify_types
              FieldValue.arrayUnion([MessagesDto.fromDomain(message).toJson()])
        });
      }

      print("It was a success");
      return right(unit);
    } catch (e) {
      print("It was a failure");
      print(e.toString());
      if (e.toString().toLowerCase().contains("permission-denied")) {
        return left(const MessageFailure.insufficientPermissions());
      } else {
        return left(const MessageFailure.unexpected());
      }
    }
  }
}
