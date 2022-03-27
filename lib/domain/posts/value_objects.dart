import 'package:foodshare/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:foodshare/domain/core/value_objects.dart';
import 'package:foodshare/domain/core/value_validators.dart';
import 'package:kt_dart/collection.dart';

class PostBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 1000;

  const PostBody._(this.value);

  factory PostBody(String input) {
    return PostBody._(
        validateMaxString(input, maxLength).flatMap(validateStringNotEmpty));
  }
}

class PostName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 30;

  const PostName._(this.value);

  factory PostName(String input) {
    return PostName._(validateMaxString(input, maxLength)
        .flatMap(validateStringNotEmpty)
        .flatMap(validateSingleLine));
  }
}

class List3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const int maxLength = 3;

  const List3._(this.value);

  factory List3(KtList<T> input) {
    return List3<T>._(validateMaxListLength(input, maxLength));
  }

  int get length => value.getOrElse(() => emptyList()).size;

  bool get isFull => length == maxLength;
}

class PostOption extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const List<String> userOptions = <String>["Free", "Paid"];

  const PostOption._(this.value);

  factory PostOption(String input) {
    return PostOption._(right(input));
  }
}
