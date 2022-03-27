import 'package:auto_route/annotations.dart';

import '../auth/sign_up_page.dart';
import '../auth/sign_in_page.dart';
import '../auth/welcome_page.dart';
import '../splash/splash_page.dart';
import '../home/home_page.dart';
import '../auth/reset_password_page.dart';
import '../messages/chat_page.dart';
import '../profile/profile_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SignInPage),
  AutoRoute(page: SignUpPage),
  AutoRoute(page: WelcomePage),
  AutoRoute(page: ResetPasswordPage,),
  AutoRoute(page: ChatPage),
  AutoRoute(page: ProfilePage),
  AutoRoute(page: HomePage),
  AutoRoute(page: SplashPage, initial: true),
 
])
class $AppRouter {}