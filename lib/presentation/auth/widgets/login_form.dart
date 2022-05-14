import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../anim/page/slide_in.dart';
import '../../home/home_page.dart';
import '../sign_up_page.dart';
import 'custom_error_bar.dart';
import 'input_field.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../domain/auth/auth_failure.dart';
import '../../../domain/core/failures.dart';
import '../../anim/fade_slide_transition.dart';
import '../../anim/page/slide_up.dart';
import '../../core/constants.dart';
import '../reset_password_page.dart';
import 'custom_button.dart';

class LoginForm extends StatelessWidget {
  final Animation<double> animation;

  const LoginForm({
    required this.animation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    double space = height > 650 ? kSpaceM : kSpaceS;

    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (BuildContext context, SignInFormState state) {
        state.authFailureOrSuccessOption.fold(
            () {},
            (Either<AuthFailure, Unit> either) => either.fold(
                    (AuthFailure failure) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(

                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        padding: const EdgeInsets.all(16),
                        content: CustomErrorBar(errorMessage:(failure.map(
                          cancelledByUser: (_) => "Cancelled",
                          serverError: (_) => "Server Error",
                          emailAlreadyInUse: (_) => "Email already in use",
                          invalidEmailProvided: (_) => "Invalid email provided",
                          invalidEmailAndPasswordCombination: (_) =>
                              "Invalid details combination")))));
                },
                    (Unit success) => Navigator.of(context)
                        .pushReplacement(SlideIn(page: const HomePage()))));
      },
      builder: (BuildContext context, SignInFormState state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
          child: Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Column(
              children: <Widget>[
                FadeSlideTransition(
                    animation: animation,
                    additionalOffset: 0.0,
                    child: InputField(
                      label: "Email Address",
                      passwordField: false,
                      validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                          .state
                          .emailAddress
                          .value
                          .fold(
                              (ValueFailure<String> f) => f.maybeMap(
                                  invalidEmail: (_) => 'Invalid Email',
                                  orElse: () => null),
                              (_) => null),
                      onChangedFunc: (String value) =>
                          BlocProvider.of<SignInFormBloc>(context)
                              .add(SignInFormEvent.emailChanged(value)),
                    )),
                SizedBox(height: space),
                FadeSlideTransition(
                    animation: animation,
                    additionalOffset: space,
                    child: InputField(
                      label: "Password",
                      passwordField: true,
                      validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                          .state
                          .password
                          .value
                          .fold(
                              (ValueFailure<String> f) => f.maybeMap(
                                  shortPassword: (_) => 'Short Password',
                                  orElse: () => null),
                              (_) => null),
                      onChangedFunc: (String value) =>
                          BlocProvider.of<SignInFormBloc>(context)
                              .add(SignInFormEvent.passwordChanged(value)),
                      forgotPasswordFunc: () => Navigator.of(context)
                          .push(SlideUpAnim(page: const ResetPasswordPage())),
                    )),
                SizedBox(height: space),
                FadeSlideTransition(
                  animation: animation,
                  additionalOffset: space * 2,
                  child: Text(
                    "Don't have an account?",
                    style: GoogleFonts.alegreya(fontSize: 17),
                  ),
                ),
                FadeSlideTransition(
                    animation: animation,
                    additionalOffset: space * 3,
                    child: TextButton(
                      child: Text(
                        "SIGN UP",
                        style: GoogleFonts.alegreya(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF000000)),
                      ),
                      onPressed: () => Navigator.of(context).pushReplacement(
                          SlideUpAnim(page: const SignUpPage())),
                    )),
                const SizedBox(height: 10),
                FadeSlideTransition(
                  animation: animation,
                  additionalOffset: 2 * space,
                  child: CustomButton(
                    color: const Color(0xFF3212F1),
                    isSubmitting: state.isSubmitting,
                    textColor: kWhite,
                    text: 'Login to continue',
                    onPressed: () {
                      BlocProvider.of<SignInFormBloc>(context).add(
                          const SignInFormEvent
                              .signInWithEmailAndPasswordPressed());

                     
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
