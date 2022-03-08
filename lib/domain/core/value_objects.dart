import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }
  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value(value: $value)';
}
