part of 'create_messages_bloc.dart';

@freezed
class CreateMessagesEvents with _$CreateMessagesEvents {
  const factory CreateMessagesEvents.initialized(Option<ChatRoom> initialChat) = Initialized;
  const factory CreateMessagesEvents.messageChanged(KtList<MessagePrimitive> message) = MessageChanged;
  const factory CreateMessagesEvents.saved() = Saved;

}
