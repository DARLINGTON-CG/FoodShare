part of 'payment_bloc.dart';

@freezed
class PaymentEvents with _$PaymentEvents {
  factory PaymentEvents.performTransaction(int paymentAmount,String sourceWalletId,String destinationWalletId,ChatRoom data) = PerformTransaction;

}
