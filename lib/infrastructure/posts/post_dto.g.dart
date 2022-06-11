// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostDto _$$_PostDtoFromJson(Map<String, dynamic> json) => _$_PostDto(
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      pickupTime: json['pickupTime'] as String,
      description: json['description'] as String,
      quantity: json['quantity'] as int,
      username: json['username'] as String,
      title: json['title'] as String,
      postUserId: json['postUserId'] as String,
      postPrice: json['postPrice'] as String,
      serverTimeStamp: const ServerTimestampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_PostDtoToJson(_$_PostDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'pickupTime': instance.pickupTime,
      'description': instance.description,
      'quantity': instance.quantity,
      'username': instance.username,
      'title': instance.title,
      'postUserId': instance.postUserId,
      'postPrice': instance.postPrice,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
