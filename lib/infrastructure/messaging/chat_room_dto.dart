import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/messaging/chat_room.dart';
import '../../domain/messaging/message.dart';
import '../../domain/messaging/value_objects.dart';
import '../posts/post_dto.dart';
import '../user/user_data_dto.dart';

part 'chat_room_dto.freezed.dart';

part 'chat_room_dto.g.dart';

@freezed
class ChatRoomDto with _$ChatRoomDto {
  const ChatRoomDto._();

  const factory ChatRoomDto(
      {
        required String ownerTime,
        required String requesterTime,
      required List<String> chatIds,
      required Map<String, dynamic> owner,
      required Map<String, dynamic> requester,
      required Map<String, dynamic> post,
      required List<Map<String, dynamic>> messages}) = _ChatRoomDto;

  factory ChatRoomDto.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomDtoFromJson(json);

  factory ChatRoomDto.fromDomain(ChatRoom chatRoom) {
    return ChatRoomDto(
      requesterTime: chatRoom.requesterTime,
      ownerTime: chatRoom.ownerTime,
      chatIds: chatRoom.chatIds,
      owner: UserDataDto.fromDomain(chatRoom.owner).toJson(),
      requester: UserDataDto.fromDomain(chatRoom.requester).toJson(),
      post: PostDto.fromDomain(chatRoom.post).toJson(),
      messages: chatRoom.messages
          .getOrCrash()
          .map((Message message) => MessagesDto.fromDomain(message).toJson())
          .asList(),
    );
  }

  ChatRoom toDomain() {
    return ChatRoom(
      chatIds: chatIds,
      ownerTime: ownerTime,
      requesterTime: requesterTime,
      post: PostDto.fromMap(post).toDomain(),
      owner: UserDataDto.fromMap(owner).toDomain(),
      requester: UserDataDto.fromMap(requester).toDomain(),
      messages: MessageList<Message>(messages
          .map((Map<String, dynamic> dto) =>
              MessagesDto.fromJson(dto).toDomain())
          .toImmutableList()),
    );
  }

  // ignore: always_specify_types
  factory ChatRoomDto.fromFirestore(DocumentSnapshot? doc) {
    return ChatRoomDto.fromJson(doc?.data() as Map<String, dynamic>);
  }
}

@freezed
abstract class MessagesDto implements _$MessagesDto {
  const MessagesDto._();

  const factory MessagesDto({
    required String id,
    required String message,
    required String messageType,
    required String messageTime,
  }) = _MessagesDto;

  factory MessagesDto.fromDomain(Message message) {
    return MessagesDto(
      id: message.id.getOrCrash(),
      message: message.message.getOrCrash(),
      messageTime: message.messageTime.getOrCrash(),
      messageType: message.messageType
    );
  }

  Message toDomain() {
    return Message(
      id: UniqueId.fromUniqueString(id),
      message: MessageBody(message),
      messageType: messageType,
      messageTime: MessageTime(messageTime)
    );
  }

  factory MessagesDto.fromJson(Map<String, dynamic> json) =>
      _$MessagesDtoFromJson(json);
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
