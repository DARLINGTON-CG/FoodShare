import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../auth/welcome_page.dart';
import '../home/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, AuthState state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            // ignore: always_specify_types
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const HomePage()));
          },
          unauthenticated: (_) =>
              // ignore: always_specify_types
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => const WelcomePage())),
        );
      },
      child: const Scaffold(
        body: SizedBox()),
    );
  }
}
