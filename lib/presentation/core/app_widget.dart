import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodshare/application/auth/auth_bloc.dart';
import 'package:foodshare/presentation/routes/router.gr.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../injector.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppRouter _appRouter = AppRouter();
    return MultiBlocProvider(
      // ignore: always_specify_types
      providers: [
        BlocProvider<AuthBloc>(
          create: (BuildContext context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp.router(
        title: 'FoodShare',
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              actionsIconTheme:
                  const IconThemeData(color: Colors.black, size: 22),
              iconTheme: const IconThemeData(color: Colors.black, size: 22),
              titleTextStyle: GoogleFonts.lato(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          navigationBarTheme: const NavigationBarThemeData(
              backgroundColor: Colors.white,
              indicatorColor: Colors.transparent,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              height: 60),
          splashColor: Colors.transparent,
          useMaterial3: true,
          textTheme: TextTheme(
            bodyText1: GoogleFonts.lato(fontSize: 19, color: Colors.black),
            bodyText2: GoogleFonts.lato(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
