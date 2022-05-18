import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import 'value_objects.dart';

part 'message.freezed.dart';

@freezed
abstract class Message implements _$Message {
  const Message._();

  const factory Message({
    required UniqueId id,
    required MessageBody message,
    required MessageTimeStamp messageTimeStamp,
  }) = _Message;

  factory Message.empty() => Message(
      id: UniqueId(),
      messageTimeStamp: MessageTimeStamp(''),
      message: MessageBody(''));

  Option<ValueFailure<dynamic>> get failureOption {
    return message.value
        .fold((ValueFailure<String> f) => some(f), (_) => none());
  }
}
