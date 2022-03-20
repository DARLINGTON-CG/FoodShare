import 'package:auto_route/annotations.dart';

import '../auth/sign_in_page.dart';
import '../auth/welcome_page.dart';
import '../splash/splash_page.dart';
import '../home/home_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SignInPage),
  AutoRoute(page: WelcomePage),
  AutoRoute(page: HomePage),
  AutoRoute(page: SplashPage, initial: true)
])
class $AppRouter {}
