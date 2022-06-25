part of 'payment_bloc.dart';

@freezed
class PaymentStates with _$PaymentStates
{
  factory PaymentStates.initial() = Initital;
  factory PaymentStates.processingPayment() = ProcessingPayment;
  factory PaymentStates.paymentError() = PaymentError;
  factory PaymentStates.messageError() = MessageError;
  factory PaymentStates.verifyPayment() = VerifyPayment;
  factory PaymentStates.sendingCompletedMessage() = SendingCompletedMessage;
}