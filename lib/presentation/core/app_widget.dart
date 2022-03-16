import 'package:flutter/material.dart';
import 'package:foodshare/presentation/sign_in/welcome_page.dart';

class AppWidget extends StatelessWidget
{
  const AppWidget({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FoodShare' ,
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}