import '../core/failures.dart';
import 'package:dartz/dartz.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';
import 'package:kt_dart/collection.dart';

class PostDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 1000;

  const PostDescription._(this.value);

  factory PostDescription(String input) {
    return PostDescription._(
        validateMaxString(input, maxLength).flatMap(validateStringNotEmpty));
  }
}

class PostTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 30;

  const PostTitle._(this.value);

  factory PostTitle(String input) {
    return PostTitle._(validateMaxString(input, maxLength)
        .flatMap(validateStringNotEmpty)
        .flatMap(validateSingleLine));
  }
}

class PostImageUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const PostImageUrl._(this.value);

  factory PostImageUrl(String input) {
    return PostImageUrl._(
        validateStringNotEmpty(input).flatMap(validateSingleLine));
  }
}

class PickupTime extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const PickupTime._(this.value);

  factory PickupTime(String input) {
    return PickupTime._(
        validateStringNotEmpty(input).flatMap(validateSingleLine));
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

class PostQuantity extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  static const List<int> quantity = <int>[1, 2,3,4,5];

  const PostQuantity._(this.value);

  factory PostQuantity(int input) {
    return PostQuantity._(right(input));
  }
}
