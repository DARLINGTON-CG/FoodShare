import 'package:dartz/dartz.dart';

import 'payment_failure.dart';
import 'transfer.dart';

abstract class IPaymentRepository {
  Future<Either<PaymentFailure, Transfer>> perfromTransaction(
      {required int amount,
      required String sourceWallet,
      required String destinationWallet});
  Future<Either<PaymentFailure, Transfer>> verifyTransaction({required String id,required String response });
}
