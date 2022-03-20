import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodshare/application/auth/auth_bloc.dart';

import '../routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, AuthState state) {
        state.map(
            initial: (_) {},
            authenticated: (_) =>
              context.replaceRoute(const HomePageRoute())
            ,
            unauthenticated: (_) =>
                context.replaceRoute(const WelcomePageRoute()));
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(color: Colors.black),
        ),
      ),
    );
  }
}
