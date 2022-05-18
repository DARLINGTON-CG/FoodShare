// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatRoomDto _$$_ChatRoomDtoFromJson(Map<String, dynamic> json) =>
    _$_ChatRoomDto(
      chatIds:
          (json['chatIds'] as List<dynamic>).map((e) => e as String).toList(),
      owner: UserDataDto.fromJson(json['owner'] as Map<String, dynamic>),
      requester:
          UserDataDto.fromJson(json['requester'] as Map<String, dynamic>),
      post: PostDto.fromJson(json['post'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => MessagesDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChatRoomDtoToJson(_$_ChatRoomDto instance) =>
    <String, dynamic>{
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
      serverTimeStamp: const ServerTimestampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_MessagesDtoToJson(_$_MessagesDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
