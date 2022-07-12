import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../domain/auth/auth_failure.dart';
import '../../../domain/core/failures.dart';
import '../../anim/fade_slide_transition.dart';
import 'custom_button.dart';
import 'input_field.dart';
import 'success_dialog.dart';

class ResetPageView extends StatelessWidget {
  final Animation<double> formAnimation;
  const ResetPageView({
    required this.formAnimation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (BuildContext context, SignInFormState state) {
      state.authFailureOrSuccessOption.fold(
          () {},
          (Either<AuthFailure, Unit> either) =>
              either.fold((AuthFailure failure) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text(failure.map(
                        cancelledByUser: (_) => "Cancelled",
                        serverError: (_) => "Server Error",
                        emailAlreadyInUse: (_) => "Email already in use",
                        invalidEmailProvided: (_) => "Invalid email provided",
                        invalidEmailAndPasswordCombination: (_) =>
                            "Invalid email and password combination"))));
              }, (Unit success) {
                showSuccessDialogBox(context, "Reset Email",
                    "A reset email link has been sent to your email address.");
               
              }));
    }, builder: (BuildContext context, SignInFormState state) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FadeSlideTransition(
              animation: formAnimation,
              additionalOffset: 0,
              child: Text(
                "Enter your email address below\nto receive a reset link.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            FadeSlideTransition(
                animation: formAnimation,
                additionalOffset: 0,
                child: InputField(
                  label: "Email Address",
                  passwordField: false,
                  key: const Key("ResetWithEmailField"),
                  validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                      .state
                      .resetEmailAddress
                      .value
                      .fold(
                          (ValueFailure<String> f) => f.maybeMap(
                              invalidEmail: (_) => 'Invalid Email',
                              orElse: () => null),
                          (_) => null),
                  onChangedFunc: (String value) =>
                      BlocProvider.of<SignInFormBloc>(context)
                          .add(SignInFormEvent.resetEmailChanged(value)),
                )),
            const SizedBox(height: 15),
            FadeSlideTransition(
                animation: formAnimation,
                additionalOffset: 0,
                child: Text(
                  "Make sure to provide the email\nused for registration.",
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.center,
                )),
            const SizedBox(height: 15),
            FadeSlideTransition(
                animation: formAnimation,
                additionalOffset: 0,
                child: CustomButton(
                  key: const Key("ResetFormRaisedButton"),
                  textColor: Colors.white,
                  text: "Press to Reset",
                  isSubmitting: state.isSubmitting,
                  color: const Color(0xFF3212F1),
                  onPressed: () {
                    BlocProvider.of<SignInFormBloc>(context)
                        .add(const SignInFormEvent.onResetPasswordPressed());
                  },
                ))
          ]);
    });
  }
}
