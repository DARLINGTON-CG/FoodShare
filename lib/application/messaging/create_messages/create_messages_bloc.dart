import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/user.dart';
import '../../../domain/core/errors.dart';
import '../../../domain/messaging/chat_room.dart';
import '../../../domain/messaging/i_message_repository.dart';
import '../../../domain/messaging/message.dart';
import '../../../domain/messaging/message_failure.dart';
import '../../../domain/messaging/value_objects.dart';
import '../../../injector.dart';

part 'create_messages_bloc.freezed.dart';
part 'create_messages_events.dart';
part 'create_messages_state.dart';

@injectable
class CreateMessagesBloc
    extends Bloc<CreateMessagesEvents, CreateMessagesState> {
  final IMessageRepository _messageRepository;

  CreateMessagesBloc(this._messageRepository)
      : super(CreateMessagesState.initial()) {
    on<Initialized>(_onInitialized);
    on<MessageChanged>(_onMessageChanged);
    on<Saved>(_onSaved);
  }

  void _onInitialized(Initialized event, Emitter<CreateMessagesState> emit) {
    emit(event.initialChat.fold(
        () => state,
        (ChatRoom initialUserData) =>
            state.copyWith(data: initialUserData, isEditing: true)));
  }

  void _onMessageChanged(
      MessageChanged event, Emitter<CreateMessagesState> emit) {
    emit(state.copyWith(
        currentMessage: event.message, successOrFailure: none()));
  }

  void _onSaved(Saved event, Emitter<CreateMessagesState> emit) async {
    emit(state.copyWith(isSaving: true, successOrFailure: none()));
    final KtList<Message> currentMessages = state.data.messages.getOrCrash();
    List<Message> converted = <Message>[];
    for (Message element in currentMessages.iter) {
      converted.add(element);
    }

    final Option<LocalUser> userOption = getIt<IAuthFacade>().getSignedInUser();
    final LocalUser user =
        userOption.getOrElse(() => throw NotAuthenticatedError());

    converted.add(Message(
      id: user.id,
      message: MessageBody(state.currentMessage),
    ));

    emit(state.copyWith(
        data: state.data.copyWith(
          messages: MessageList<Message>(
              converted.map((Message message) => message).toImmutableList()),
        ),
        successOrFailure: none()));
  
    if (state.data.failureOption.isNone() && state.currentMessage.isNotEmpty) {
      final Either<MessageFailure, Unit> failureOrSuccess =
          state.data.messages.length >= 2 || event.isUpdate
              ? await _messageRepository.sendUpdate(
                  state.data,
                  Message(
                    id: user.id,
                    message: MessageBody(state.currentMessage),
                  ))
              : await _messageRepository.send(state.data);

      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          successOrFailure: optionOf(failureOrSuccess)));
    }
    emit(state.copyWith(
        isSaving: false, showErrorMessages: true, successOrFailure: none()));
  }
}
