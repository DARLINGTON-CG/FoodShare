import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodshare/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:foodshare/domain/auth/auth_failure.dart';
import 'package:foodshare/domain/core/failures.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../anim/fade_slide_transition.dart';
import '../../core/constants.dart';
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
            (Either<AuthFailure, Unit> either) =>
                either.fold((AuthFailure failure) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(failure.map(
                          cancelledByUser: (_) => "Cancelled",
                          serverError: (_) => "Server Error",
                          emailAlreadyInUse: (_) => "Email already in use",
                          invalidEmailAndPasswordCombination: (_) =>
                              "Invalid email and password combination"))));
                }, (Unit success) => null));
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
                  child: TextFormField(
                    autocorrect: false,
                    onChanged: (String value) =>
                        BlocProvider.of<SignInFormBloc>(context)
                            .add(SignInFormEvent.emailChanged(value)),
                    validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                        .state
                        .emailAddress
                        .value
                        .fold(
                            (ValueFailure<String> f) => f.maybeMap(
                                invalidEmail: (_) => 'Invalid Email',
                                orElse: () => null),
                            (_) => null),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(kPaddingM),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      hintText: "Email Address",
                      hintStyle: GoogleFonts.alegreya(
                        color: kBlack.withOpacity(0.7),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: kBlack,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: space),
                FadeSlideTransition(
                  animation: animation,
                  additionalOffset: space,
                  child: TextFormField(
                    autocorrect: false,
                    onChanged: (String value) =>
                        BlocProvider.of<SignInFormBloc>(context)
                            .add(SignInFormEvent.passwordChanged(value)),
                    validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                        .state
                        .password
                        .value
                        .fold(
                            (ValueFailure<String> f) => f.maybeMap(
                                shortPassword: (_) => 'Short Password',
                                orElse: () => null),
                            (_) => null),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(kPaddingM),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      hintText: "Password",
                      hintStyle: GoogleFonts.alegreya(
                        fontSize: 17,
                        color: kBlack.withOpacity(0.7),
                        fontWeight: FontWeight.w500,
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: kBlack.withOpacity(0.75),
                      ),
                    ),
                  ),
                ),
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
