import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
// ignore: depend_on_referenced_packages
import 'package:convert/convert.dart';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';

import '../../domain/payments/payment_failure.dart';
import '../../domain/payments/transfer.dart';
import '../../domain/payments/wallet.dart';
import '../../domain/payments/i_payment_repository.dart';

@LazySingleton(as: IPaymentRepository)
class RapydClient implements IPaymentRepository {
  final String _baseURL = 'https://sandboxapi.rapyd.net';
  final String _accessKey = '1C84808930BC89DD6DF1';
  final String _secretKey =
      '7e43eac17c0263b61b4d7ad602522e8f0ef87a3df34e38fcfb66824517c2c7ad94a438966d375f62';

  String _generateSalt() {
    final Random random = Random.secure();
    // Generate 16 characters for salt by generating 16 random bytes
    // and encoding it.
    final List<int> randomBytes =
        List<int>.generate(16, (int index) => random.nextInt(256));
    return base64UrlEncode(randomBytes);
  }

  Map<String, String> _generateHeader({
    required String method,
    required String endpoint,
    String body = '',
  }) {
    int unixTimetamp = DateTime.now().millisecondsSinceEpoch;
    String timestamp = (unixTimetamp / 1000).round().toString();

    String salt = _generateSalt();

    String toSign =
        method + endpoint + salt + timestamp + _accessKey + _secretKey + body;

    Uint8List keyEncoded = ascii.encode(_secretKey);
    Uint8List toSignEncoded = ascii.encode(toSign);

    Hmac hmacSha256 = Hmac(sha256, keyEncoded); // HMAC-SHA256
    Digest digest = hmacSha256.convert(toSignEncoded);
    String ss = hex.encode(digest.bytes);
    List<int> tt = ss.codeUnits;
    String signature = base64.encode(tt);

    Map<String, String> headers = <String, String>{
      'Content-Type': 'application/json',
      'access_key': _accessKey,
      'salt': salt,
      'timestamp': timestamp,
      'signature': signature,
    };

    return headers;
  }

  Future<Wallet?> getWalletDetails({required String walletID}) async {
    Wallet? retrievedWallet;

    String method = "get";
    String walletEndpoint = '/v1/user/$walletID';

    final Uri walletURL = Uri.parse(_baseURL + walletEndpoint);

    final Map<String, String> headers = _generateHeader(
      method: method,
      endpoint: walletEndpoint,
    );

    try {
      http.Response response = await http.get(walletURL, headers: headers);

      print(response.body);

      if (response.statusCode == 200) {
        print('Wallet retrieved successfully!');
        retrievedWallet = Wallet.fromJson(jsonDecode(response.body));
      }
    } catch (_) {
      print('Failed to retrieve wallet');
    }

    return retrievedWallet;
  }

  @override
  Future<Either<PaymentFailure, Transfer>> perfromTransaction(
      {required int amount,
      required String sourceWallet,
      required String destinationWallet}) async {
    String method = "post";
    String transferEndpoint = '/v1/account/transfer';

    final Uri transferURL = Uri.parse(_baseURL + transferEndpoint);

    String data = jsonEncode(<String, dynamic>{
      "source_ewallet": sourceWallet,
      "amount": amount,
      "currency": "USD",
      "destination_ewallet": destinationWallet,
    });

    final Map<String, String> headers = _generateHeader(
      method: method,
      endpoint: transferEndpoint,
      body: data,
    );

    try {
      http.Response response = await http.post(
        transferURL,
        headers: headers,
        body: data,
      );

      print(response.body);

      if (response.statusCode == 200) {
        print('SUCCESSFULLY TRANSFERED');
        return right(Transfer.fromJson(jsonDecode(response.body)));
      } else {
        return left(const PaymentFailure.unexpected());
      }
    } catch (e) {
      print('Failed to transfer amount $e');
      return left(const PaymentFailure.unexpected());
    }
  }

  @override
  Future<Either<PaymentFailure, Transfer>> verifyTransaction({
    required String id,
    required String response,
  }) async {
    String method = "post";
    String responseEndpoint = '/v1/account/transfer/response';

    final Uri responseURL = Uri.parse(_baseURL + responseEndpoint);

    String data = jsonEncode(<String, dynamic>{
      "id": id,
      "status": response,
    });

    final Map<String, String> headers = _generateHeader(
      method: method,
      endpoint: responseEndpoint,
      body: data,
    );

    try {
      http.Response response = await http.post(
        responseURL,
        headers: headers,
        body: data,
      );

      if (response.statusCode == 200) {
        print('TRANSFER STATUS UPDATED: $response');
        return right(Transfer.fromJson(jsonDecode(response.body)));
      } else {
        return left(const PaymentFailure.unexpected());
      }
    } catch (e) {
      print('Failed to update transfer status $e');
      return left(const PaymentFailure.unexpected());
    }
  }
}
