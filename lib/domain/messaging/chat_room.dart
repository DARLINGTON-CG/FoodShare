import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../core/failures.dart';
import 'message.dart';
import 'value_objects.dart';
import '../posts/post.dart';
import '../user/user_data.dart';

part 'chat_room.freezed.dart';

@freezed
abstract class ChatRoom implements _$ChatRoom {
  const ChatRoom._();
  const factory ChatRoom({
    required List<String> chatIds,
    required Post post,
    required UserData owner,
    required UserData requester,
    required MessageList<Message> messages,
  }) = _ChatRoom;


   factory ChatRoom.empty() => ChatRoom(
     chatIds: List<String>.empty(),
       messages: MessageList<Message>(emptyList()),
       post: Post.empty(),
       owner: UserData.empty(),
       requester: UserData.empty()
      );
  
  
  Option<ValueFailure<dynamic>> get failureOption {
    return messages.failureOrUnit
        .andThen(
         messages
              .getOrCrash()
              .map((Message message) => message.failureOption)
              // ignore: always_specify_types
              .filter((Option<ValueFailure> o) => o.isSome())
              .getOrElse(0, (_) => none())
              // ignore: always_specify_types
              .fold(() => right(unit), (ValueFailure f) => left(f)),
        )
        // ignore: always_specify_types
        .fold((ValueFailure f) => some(f), (_) => none());
  }
}
