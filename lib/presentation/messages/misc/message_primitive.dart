
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/value_objects.dart';
import '../../../domain/messaging/message.dart';
import '../../../domain/messaging/value_objects.dart';

part 'message_primitive.freezed.dart';

@freezed
abstract class MessagePrimitive implements _$MessagePrimitive{
  const MessagePrimitive._();

  const factory MessagePrimitive({
   required UniqueId id,
   required String message,
   required String messageTimeStamp
  }) = _MessagePrimitive;


  factory MessagePrimitive.empty() => MessagePrimitive(
        id: UniqueId(),
        message: '',
        messageTimeStamp: '',
      );

  factory MessagePrimitive.fromDomain(Message message) {
    return MessagePrimitive(
      id: message.id,
     messageTimeStamp:  message.messageTimeStamp.getOrCrash(),
      message: message.message.getOrCrash()
    );
  }

 Message toDomain() {
    return Message(
    id: id ,
    message: MessageBody(message) ,
    messageTimeStamp: MessageTimeStamp(messageTimeStamp) ,
    );
  }
}
