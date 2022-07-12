import '../core/failures.dart';
import 'package:dartz/dartz.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class PostDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 135;

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


class PickupTime extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const PickupTime._(this.value);

  factory PickupTime(String input) {
    return PickupTime._(validateStringNotEmpty(input));
  }
}

class PostQuantity extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  static const List<int> quantity = <int>[1, 2, 3, 4, 5];

  const PostQuantity._(this.value);

  factory PostQuantity(int input) {
    return PostQuantity._(right(input));
  }
}

class PostUserId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const PostUserId._(this.value);

  factory PostUserId(String input) {
    return PostUserId._(right(input));
  }
}

class PostPrice extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const int maxAmount = 500;

  const PostPrice._(this.value);

  factory PostPrice(String input) {
    return PostPrice._(validateStringNotEmpty(input)
        .flatMap(validateSingleLine)
        .flatMap(validateInputAmount).flatMap(validateMaxAmount));
  }
}
