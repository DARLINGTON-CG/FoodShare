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
        .map((QuerySnapshot<Object?> snapshots) => snapshots.docs.map(
            (QueryDocumentSnapshot<Object?> doc) =>
                ChatRoomDto.fromFirestore(doc).toDomain()))
        .map((Iterable<ChatRoom> chat) =>
            right<MessageFailure, KtList<ChatRoom>>(chat.toImmutableList()))
        .onErrorReturnWith((Object error, StackTrace stackTrace) {
      if (error is PlatformException &&
          error.message!.contains("PERMISSION_DENIED")) {
        return left(const MessageFailure.insufficientPermissions());
      } else {
        return left(const MessageFailure.unexpected());
      }
    });
  }

  //037fbb60-d552-11ec-9c88-53368eb22d43rumpelstiltskin
  //ChatIds -- 41w2pUUDqYaDpgckpnLOKatOWA33 --requester
  //        -- cOQKZf18vISl7uCwcCHHqveteIM2 --user
  
  //owner -- imageUrl --- https://firebasestorage.googleapis.com/v0/b/foodshare-cc295.appspot.com/o/cOQKZf18vISl7uCwcCHHqveteIM2%2FcOQKZf18vISl7uCwcCHHqveteIM2?alt=media&token=f2c6f77b-8944-456b-8dec-bd08072ade9e
  //owner -- username --- holybrook
  //requester -- imageUrl ---https://firebasestorage.googleapis.com/v0/b/foodshare-cc295.appspot.com/o/41w2pUUDqYaDpgckpnLOKatOWA33%2F41w2pUUDqYaDpgckpnLOKatOWA33?alt=media&token=40f1eb2f-b41e-41af-a5ce-1bb489728d43
  //requester -- username ---rumpelstiltskin
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
}
