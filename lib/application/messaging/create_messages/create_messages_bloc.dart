import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/messaging/chat_room.dart';
import '../../../domain/messaging/i_message_repository.dart';
import '../../../domain/messaging/message.dart';
import '../../../domain/messaging/message_failure.dart';
import '../../../domain/messaging/value_objects.dart';
import '../../../presentation/messages/misc/message_primitive.dart';

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
        data: state.data.copyWith(
          messages: MessageList<Message>(event.message
              .map((MessagePrimitive primitive) => primitive.toDomain())),
        ),
        successOrFailure: none()));
  }

  void _onSaved(Saved event, Emitter<CreateMessagesState> emit) async {
    emit(state.copyWith(isSaving: true, successOrFailure: none()));

    if (state.data.failureOption.isNone()) {
      final Either<MessageFailure, Unit>? failureOrSuccess =
          await _messageRepository.send(state.data);
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          successOrFailure: optionOf(failureOrSuccess)));
    }
    emit(state.copyWith(
        isSaving: false, showErrorMessages: true, successOrFailure: none()));
  }
}
