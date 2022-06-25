import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/messaging/chat_room.dart';
import '../../domain/messaging/i_message_repository.dart';
import '../../domain/messaging/message.dart';
import '../../domain/messaging/message_failure.dart';
import '../../domain/messaging/value_objects.dart';
import '../../domain/payments/i_payment_repository.dart';
import '../../domain/payments/payment_failure.dart';
import '../../domain/payments/transfer.dart';
import '../../domain/utility/useful_functions.dart';

part 'payment_events.dart';
part 'payment_state.dart';

part 'payment_bloc.freezed.dart';

@injectable
class PaymentBloc extends Bloc<PaymentEvents, PaymentStates> {
  final IPaymentRepository _paymentRepository;
  final IMessageRepository _messageRepository;

  PaymentBloc(this._paymentRepository, this._messageRepository)
      : super(PaymentStates.initial()) {
    on<PerformTransaction>(_onPerformTransaction);
  }

  void _onPerformTransaction(
      PerformTransaction event, Emitter<PaymentStates> emit) async {
    emit(PaymentStates.processingPayment());
    // String returnValue = "";

    final Either<PaymentFailure, Transfer> transaction =
        await _paymentRepository.perfromTransaction(
      amount: event.paymentAmount,
      sourceWallet: event.sourceWalletId,
      destinationWallet: event.destinationWalletId,
    );
    Transfer? transactionInfo = transaction.fold((_) {
      return null;
    }, (Transfer r) {
      return r;
    });
    if (transactionInfo == null) {
      emit(PaymentStates.paymentError());
    } else {
      emit(PaymentStates.verifyPayment());
      final Either<PaymentFailure, Transfer> updatedInfo =
          await _paymentRepository.verifyTransaction(
              id: transactionInfo.data.id, response: 'accept');

      final Transfer? retValue =
          updatedInfo.fold((_) => null, (Transfer r) => r);
      if (retValue == null) {
        emit(PaymentStates.paymentError());
      } else {
        final Either<MessageFailure, Unit> failureOrSuccess =
            await _messageRepository.sendUpdate(
                event.data,
                Message(
                  id: UniqueId.fromUniqueString(getUserId()),
                  messageType: "Text",
                  message: MessageBody(
                      "Transaction complete with operation id${retValue.toJson()["status"]["operation_id"]}"),
                ),
                null);
        failureOrSuccess.fold((_) => emit(PaymentStates.messageError()),
            (_) => emit(PaymentStates.sendingCompletedMessage()));
      }
    }
  }
}
