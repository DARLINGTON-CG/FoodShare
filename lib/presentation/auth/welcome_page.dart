import 'package:flutter/material.dart';
import '../anim/page/slide_up.dart';
import 'sign_in_page.dart';
import 'sign_up_page.dart';
import 'widgets/sign_container.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics:const  BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Image(
                        width: 300,
                        height: 300,
                        image: AssetImage('assets/welcome.png'))),
                Text('FOODSHARE', style: Theme.of(context).textTheme.headline1),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                  child: Text(
                    'Amazing way to distribute food.\nLet\'s work together to make the world a better place.',
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SignContainer(
                        displayText: 'Sign up',
                        isOutlined: false,
                        onPressedCallback: () => Navigator.of(context)
                            .pushReplacement(
                                SlideUpAnim(page: const SignUpPage()))),
                    const SizedBox(
                      width: 15,
                    ),
                    SignContainer(
                        displayText: 'Sign In',
                        isOutlined: true,
                        onPressedCallback: () => Navigator.of(context)
                            .pushReplacement(
                                SlideUpAnim(page: const SignInPage()))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
