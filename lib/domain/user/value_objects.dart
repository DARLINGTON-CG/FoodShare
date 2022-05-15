
import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class Username extends ValueObject<String>
{ 
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 28;

  const Username._(this.value);

  factory Username(String input) {
    return Username._(
        validateMaxString(input, maxLength).flatMap(validateStringNotEmpty).flatMap(validateNoSpecialCharAndSpace));
  }
}

