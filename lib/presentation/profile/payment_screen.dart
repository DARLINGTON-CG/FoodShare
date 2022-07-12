import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Payment Configuration"), titleTextStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        
      )),
      body: Container(

      ),
    );
  }
}
