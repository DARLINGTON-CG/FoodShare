part of 'read_messages_bloc.dart';

@freezed
class ReadMessagesState with _$ReadMessagesState {
  const factory ReadMessagesState.initial() = _Initial;
  const factory ReadMessagesState.loadingProgress() = _LoadingProgress;
  const factory ReadMessagesState.loadSuccess(KtList<ChatRoom> chatRoom) = _LoadSuccess;
  const factory ReadMessagesState.loadFailure(MessageFailure messageFailure) = _LoadFailure;
}



