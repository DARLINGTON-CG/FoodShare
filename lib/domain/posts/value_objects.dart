import 'package:foodshare/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:foodshare/domain/core/value_objects.dart';
import 'package:foodshare/domain/core/value_validators.dart';

class PostBody extends ValueObject<String>
{
 @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 1000;

  const PostBody._(this.value);

  factory PostBody(String input)
  {
    return PostBody._(
      validateMaxString(input, maxLength).flatMap(validateStringNotEmpty)
    );
  }
  
}