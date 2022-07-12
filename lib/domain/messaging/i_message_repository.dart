import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/messaging/message.dart';
import 'chat_room.dart';
import 'message_failure.dart';

abstract class IMessageRepository {
  Stream<Either<MessageFailure, KtList<ChatRoom>>> readAll();
  Future<Either<MessageFailure, Unit>> send(
      {required ChatRoom chat, required File? file, required bool isFile});
  Future<Either<MessageFailure, Unit>> updateTime(
      {required String chatDocId,
      required String timeType,
      required String time});
  Future<Either<MessageFailure, Unit>> sendUpdate(
      ChatRoom chat, Message message, File? file);
  Future<Either<MessageFailure, Unit>> delete(ChatRoom chat, String username);
}
