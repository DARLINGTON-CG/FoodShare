// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostDto _$$_PostDtoFromJson(Map<String, dynamic> json) => _$_PostDto(
      imageUrl: json['imageUrl'] as String,
      pickupTime: json['pickupTime'] as String,
      description: json['description'] as String,
      quantity: json['quantity'] as int,
      title: json['title'] as String,
      serverTimeStamp: const ServerTimestampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_PostDtoToJson(_$_PostDto instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'pickupTime': instance.pickupTime,
      'description': instance.description,
      'quantity': instance.quantity,
      'title': instance.title,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
