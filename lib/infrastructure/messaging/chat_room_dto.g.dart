// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatRoomDto _$$_ChatRoomDtoFromJson(Map<String, dynamic> json) =>
    _$_ChatRoomDto(
      ownerTime: json['ownerTime'] as String,
      requesterTime: json['requesterTime'] as String,
      chatIds:
          (json['chatIds'] as List<dynamic>).map((e) => e as String).toList(),
      owner: json['owner'] as Map<String, dynamic>,
      requester: json['requester'] as Map<String, dynamic>,
      post: json['post'] as Map<String, dynamic>,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_ChatRoomDtoToJson(_$_ChatRoomDto instance) =>
    <String, dynamic>{
      'ownerTime': instance.ownerTime,
      'requesterTime': instance.requesterTime,
      'chatIds': instance.chatIds,
      'owner': instance.owner,
      'requester': instance.requester,
      'post': instance.post,
      'messages': instance.messages,
    };

_$_MessagesDto _$$_MessagesDtoFromJson(Map<String, dynamic> json) =>
    _$_MessagesDto(
      id: json['id'] as String,
      message: json['message'] as String,
      messageType: json['messageType'] as String,
      messageTime: json['messageTime'] as String,
    );

Map<String, dynamic> _$$_MessagesDtoToJson(_$_MessagesDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'messageType': instance.messageType,
      'messageTime': instance.messageTime,
    };
