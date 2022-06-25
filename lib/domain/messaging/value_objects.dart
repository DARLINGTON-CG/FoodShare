
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';



class MessageBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 500;

  const MessageBody._(this.value);

  factory MessageBody(String input) {
    return MessageBody._(
        validateMaxString(input, maxLength).flatMap(validateStringNotEmpty));
  }
}


class MessageTimeStamp extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const MessageTimeStamp._(this.value);

  factory MessageTimeStamp(String input) {
    return MessageTimeStamp._(validateStringNotEmpty(input));
  }
}


class MessageList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const int maxLength = 100;

  factory MessageList(KtList<T> input) {
    // ignore: always_specify_types
    return MessageList._(
      validateMaxListLength(input, maxLength),
    );
  }

  const MessageList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}