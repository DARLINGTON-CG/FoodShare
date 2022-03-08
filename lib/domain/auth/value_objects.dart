import 'package:dartz/dartz.dart';
import 'package:foodshare/domain/core/value_objects.dart';

import '../core/failures.dart';
import '../core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const EmailAddress._({required this.value});

  factory EmailAddress(String input) {
    return EmailAddress._(value: validateEmailAddress(input));
  }

}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Password._({required this.value});

  factory Password(String input) {
    return Password._(value: validatePassword(input));
  }

}
