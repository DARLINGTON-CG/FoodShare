part of 'read_messages_bloc.dart';

@freezed
class ReadMessagesEvents with _$ReadMessagesEvents{
  const factory ReadMessagesEvents.readAllStarted() = ReadAllStarted;
}
