import 'package:flutter/material.dart';
import 'package:foodshare/presentation/anim/page/slide_up.dart';
import 'package:foodshare/presentation/sign_in/sign_in_page.dart';
import 'package:foodshare/presentation/sign_in/widgets/sign_container.dart';
import 'package:google_fonts/google_fonts.dart';

import 'sign_up_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Image(
                      width: 300,
                      height: 300,
                      image: AssetImage('assets/welcome.png'))),
              Text(
                'FOODSHARE',
                style: GoogleFonts.alegreya(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                child: Text(
                  'Amazing way to distribute food.\nLet\'s work together to make the world a better place.',
                  style: GoogleFonts.alegreya(fontSize: 17),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SignContainer(
                      displayText: 'Sign up',
                      isOutlined: false,
                      onPressedCallback: () =>
                          Navigator.of(context).push(SlideUpAnim(
                              page: SignUpPage(
                            screenHeight: MediaQuery.of(context).size.height,
                          )))),
                  const SizedBox(
                    width: 15,
                  ),
                  SignContainer(
                      displayText: 'Sign In',
                      isOutlined: true,
                      onPressedCallback: () => Navigator.of(context).push(
                          SlideUpAnim(
                              page: Login(
                                  screenHeight:
                                      MediaQuery.of(context).size.height)))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
