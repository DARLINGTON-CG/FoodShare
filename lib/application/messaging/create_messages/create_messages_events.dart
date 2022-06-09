part of 'create_messages_bloc.dart';

@freezed
class CreateMessagesEvents with _$CreateMessagesEvents {
  const factory CreateMessagesEvents.initialized(Option<ChatRoom> initialChat) = Initialized;
  const factory CreateMessagesEvents.messageChanged(String message) = MessageChanged;
  const factory CreateMessagesEvents.saved(bool isUpdate) = Saved;

}


