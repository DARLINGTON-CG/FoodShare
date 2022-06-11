import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import '../../domain/core/errors.dart';
import '../../domain/messaging/chat_room.dart';
import '../../domain/messaging/i_message_repository.dart';
import '../../domain/messaging/message.dart';
import '../../domain/messaging/message_failure.dart';
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
  Future<Either<MessageFailure, Unit>> send(ChatRoom chat) async {
    try {
      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.chatDocuments();
      await userDoc
          .doc(chat.post.id.getOrCrash() + chat.requester.username.getOrCrash())
          .set(ChatRoomDto.fromDomain(chat).toJson());

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
  Future<Either<MessageFailure, Unit>> delete(ChatRoom chat,String username) async {
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
      ChatRoom chat, Message message) async {
    try {
      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.chatDocuments();
      await userDoc
          .doc(chat.post.id.getOrCrash() + chat.requester.username.getOrCrash())
          // ignore: always_specify_types
          .update({
        // ignore: always_specify_types
        "messages":
            // ignore: always_specify_types
            FieldValue.arrayUnion([MessagesDto.fromDomain(message).toJson()])
      } /*ChatRoomDto.fromDomain(chat).toJson()*/);

      return right(unit);
    } catch (e) {
      if (e.toString().toLowerCase().contains("permission-denied")) {
        return left(const MessageFailure.insufficientPermissions());
      } else {
        return left(const MessageFailure.unexpected());
      }
    }
  }
}
