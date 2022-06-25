import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_failure.freezed.dart';

@freezed
class PaymentFailure with _$PaymentFailure {
  const factory PaymentFailure.unexpected() = _Unexpected;
  const factory PaymentFailure.insufficientFunds() =
      _InsufficientFunds;
  const factory PaymentFailure.invalidInputs() = _InvalidInputs;
}
