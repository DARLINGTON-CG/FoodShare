import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/user_data/user_data_cud/user_data_bloc.dart';
import '../../injector.dart';
import '../splash/splash_page.dart';
import 'theme_data.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      // ignore: always_specify_types
      providers: [
        BlocProvider<AuthBloc>(
          create: (BuildContext context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider<UserDataBloc>(
            create: (BuildContext context) => getIt<UserDataBloc>()),
      ],
      child: MaterialApp(
          title: 'FoodShare',
          debugShowCheckedModeBanner: false,
          home: const SplashPage(),
          theme: lightTheme),
    );
  }
}
