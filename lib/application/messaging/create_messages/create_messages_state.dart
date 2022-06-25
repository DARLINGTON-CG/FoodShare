part of 'create_messages_bloc.dart';

@freezed
class CreateMessagesState with _$CreateMessagesState {
  const factory CreateMessagesState(
          {required ChatRoom data,
          required String currentMessage,
          required File? currentFile,
          required bool showErrorMessages,
          required bool isSaving,
          required bool isEditing,
          required bool canUpdate,
          required Option<Either<MessageFailure, Unit>> successOrFailure}) =
      _CreateMessagesState;

  factory CreateMessagesState.initial() => CreateMessagesState(
      data: ChatRoom.empty(),
      showErrorMessages: false,
      currentMessage: "",
      currentFile: null,
      isEditing: false,
      isSaving: false,
      canUpdate: false,
      successOrFailure: none());
}
