import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'failures.dart';

Either<ValueFailure<String>, String> validateMaxString(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure<String>.exceedingLength(
        failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure<String>.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateNoSpecialCharAndSpace(
    String input) {
  const String noSpaceOrSpecialChar = r"""^[A-Za-z0-9? ,_-]+$""";
  //"^[A-Za-z0-9? , _-]+$"
  if (RegExp(noSpaceOrSpecialChar).hasMatch(input)) {
    return right(input);
  } else {
    return left(
        ValueFailure<String>.noSpaceOrSpecialCharac(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure<String>.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateInputAmount(String input) {
  const String currencyRegex = r"""^(\d+(\.\d{0,2})?|\.?\d{1,2})$""";
  if (RegExp(currencyRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure<String>.invalidAmount(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateMaxAmount(String input) {
  bool exceedsMaxAmount = double.tryParse(input)! > 500;
  if (!exceedsMaxAmount) {
    return right(input);
  } else {
    return left(ValueFailure<String>.maxAmount(failedValue: input));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
    KtList<T> input, int maxLength) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure<KtList<T>>.listTooLong(
        failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const String emailRegex =
      r"""^[a-zA-z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure<String>.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure<String>.shortPassword(failedValue: input));
  }
}
