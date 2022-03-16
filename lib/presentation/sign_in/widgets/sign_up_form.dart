import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../anim/fade_slide_transition.dart';
import '../../core/constants.dart';
import 'custom_button.dart';
import 'custom_input_field.dart';

class SignUpForm extends StatelessWidget {
  final Animation<double> animation;

  const SignUpForm({
    required this.animation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    double space = height > 650 ? kSpaceM : kSpaceS;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
      child: Column(
        children: <Widget>[
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: const CustomInputField(
              label: 'Email Address',
              prefixIcon: Icons.person,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: space,
            child: const CustomInputField(
              label: 'Password',
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: space,
            child: const CustomInputField(
              label: 'Confirm Password',
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: space * 2,
            child: Text(
              "Already have an account?",
              style: GoogleFonts.alegreya(fontSize: 17, color: Colors.black),
            ),
          ),
          FadeSlideTransition(
              animation: animation,
              additionalOffset: space * 3,
              child: TextButton(
                child: Text(
                  "SIGN IN",
                  style: GoogleFonts.alegreya(
                      fontSize: 17, 
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF4E33FF)),
                ),
                onPressed: () {},
              )),
          const SizedBox(height: 10),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 2 * space,
            child: CustomButton(
              color: Colors.black,
              textColor: kWhite,
              text: 'Signup to continue',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
