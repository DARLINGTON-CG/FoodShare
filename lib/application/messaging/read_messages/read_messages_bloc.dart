import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/messaging/chat_room.dart';
import '../../../domain/messaging/i_message_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/messaging/message_failure.dart';
part 'read_messages_events.dart';
part 'read_messages_state.dart';

part 'read_messages_bloc.freezed.dart';

@injectable
class ReadMessagesBloc
    extends Bloc<ReadMessagesEvents, ReadMessagesState> {
  final IMessageRepository _messageRepository;
  ReadMessagesBloc(this._messageRepository)
      : super(const ReadMessagesState.initial()) {
    on<ReadAllStarted>(_onReadStarted);
  }


  void _onReadStarted(
      ReadAllStarted event, Emitter<ReadMessagesState> emit) async {
    emit(const ReadMessagesState.loadingProgress());

    await emit.onEach<ReadMessagesState>(
      _messageRepository.readAll().map(
          (Either<MessageFailure, KtList<ChatRoom>> failureOrPost) =>
              failureOrPost.fold(
                  (MessageFailure failure) =>
                      ReadMessagesState.loadFailure(failure),
                  (KtList<ChatRoom> chat) =>
                      ReadMessagesState.loadSuccess(chat))),
      onData: (ReadMessagesState chat) => emit(chat),
    );
  }
}
