import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../injector.dart';
import '../anim/fade_slide_transition.dart';
import '../core/constants.dart';
import 'widgets/login_form.dart';

class Login extends StatefulWidget {
  final double screenHeight;

  const Login({
    required this.screenHeight,
    Key? key,
  }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _headerTextAnimation;
  late Animation<double> _formElementAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: kLoginAnimationDuration,
    );

    Tween<double> fadeSlideTween = Tween<double>(begin: 0.0, end: 1.0);
    _headerTextAnimation = fadeSlideTween.animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.0,
        0.6,
        curve: Curves.easeInOut,
      ),
    ));
    _formElementAnimation = fadeSlideTween.animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.7,
        1.0,
        curve: Curves.easeInOut,
      ),
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kWhite,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        actionsIconTheme: const IconThemeData(color: Colors.black),
        iconTheme: const IconThemeData(color: Colors.black),
        title: FadeSlideTransition(
          animation: _headerTextAnimation,
          additionalOffset: 0,
          child: Text("Welcome Back",
              style: GoogleFonts.alegreya(
                  fontSize: 21,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kPaddingL,
          ),
          child: BlocProvider<SignInFormBloc>(
            create: (BuildContext context) => getIt<SignInFormBloc>(),
            child: LoginForm(
                animation: _formElementAnimation,
              ) ,
          
          ),
        ),
      ),
    );
  }
}
