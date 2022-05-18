
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'chat_room.dart';
import 'message_failure.dart';


abstract class IMessageRepository {
  Stream<Either<MessageFailure, KtList<ChatRoom>>> readAll();
  Future<Either<MessageFailure, Unit>> send(ChatRoom chat);
}
