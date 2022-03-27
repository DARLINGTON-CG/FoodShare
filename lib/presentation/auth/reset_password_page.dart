import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../injector.dart';
import '../anim/fade_slide_transition.dart';
import 'widgets/reset_page_view.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _headerAnimation;
  late Animation<double> _formAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1600));

    Tween<double> _fadeSlideAnimation = Tween<double>(begin: 0, end: 1);
    _headerAnimation = _fadeSlideAnimation.animate(CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.6, curve: Curves.easeIn)));

    _formAnimation = _fadeSlideAnimation.animate(CurvedAnimation(
        parent: _animationController, curve: const Interval(0.7, 1.0)));
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
        appBar: AppBar(
            elevation: 0.0,
            centerTitle: true,
            leading: LeadingIconAnimation(
                animation: _headerAnimation,
                child: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop())),
            title: FadeSlideTransition(
              animation: _headerAnimation,
              additionalOffset: 0,
              child: Text("Reset Password",
                  style: GoogleFonts.lato(
                      fontSize: 19,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            )),
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 2),
              child: BlocProvider<SignInFormBloc>(
                  create: (BuildContext context) => getIt<SignInFormBloc>(),
                  child: ResetPageView(
                    formAnimation: _formAnimation,
                  ))),
        ));
  }
}

class LeadingIconAnimation extends StatelessWidget {
  final Animation<double> animation;
  final Widget? child;
  const LeadingIconAnimation({
    required this.animation,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        child: child,
        builder: (BuildContext context, Widget? widget) {
          return Transform.translate(
            offset: Offset(
              (-32.0) * (1 - animation.value),
              0.0,
            ),
            child: Opacity(opacity: animation.value, child: widget),
          );
        });
  }
}
