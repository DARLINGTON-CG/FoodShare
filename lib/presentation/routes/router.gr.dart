// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../auth/reset_password_page.dart' as _i4;
import '../auth/sign_in_page.dart' as _i1;
import '../auth/sign_up_page.dart' as _i2;
import '../auth/welcome_page.dart' as _i3;
import '../home/home_page.dart' as _i7;
import '../messages/chat_page.dart' as _i5;
import '../profile/profile_page.dart' as _i6;
import '../splash/splash_page.dart' as _i8;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SignInPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignInPage());
    },
    SignUpPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignUpPage());
    },
    WelcomePageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.WelcomePage());
    },
    ResetPasswordPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ResetPasswordPage());
    },
    ChatPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ChatPage());
    },
    ProfilePageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfilePage());
    },
    HomePageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.HomePage());
    },
    SplashPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.SplashPage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i9.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i9.RouteConfig(WelcomePageRoute.name, path: '/welcome-page'),
        _i9.RouteConfig(ResetPasswordPageRoute.name,
            path: '/reset-password-page'),
        _i9.RouteConfig(ChatPageRoute.name, path: '/chat-page'),
        _i9.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i9.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i9.RouteConfig(SplashPageRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInPageRoute extends _i9.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpPageRoute extends _i9.PageRouteInfo<void> {
  const SignUpPageRoute() : super(SignUpPageRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpPageRoute';
}

/// generated route for
/// [_i3.WelcomePage]
class WelcomePageRoute extends _i9.PageRouteInfo<void> {
  const WelcomePageRoute()
      : super(WelcomePageRoute.name, path: '/welcome-page');

  static const String name = 'WelcomePageRoute';
}

/// generated route for
/// [_i4.ResetPasswordPage]
class ResetPasswordPageRoute extends _i9.PageRouteInfo<void> {
  const ResetPasswordPageRoute()
      : super(ResetPasswordPageRoute.name, path: '/reset-password-page');

  static const String name = 'ResetPasswordPageRoute';
}

/// generated route for
/// [_i5.ChatPage]
class ChatPageRoute extends _i9.PageRouteInfo<void> {
  const ChatPageRoute() : super(ChatPageRoute.name, path: '/chat-page');

  static const String name = 'ChatPageRoute';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfilePageRoute extends _i9.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(ProfilePageRoute.name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i7.HomePage]
class HomePageRoute extends _i9.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i8.SplashPage]
class SplashPageRoute extends _i9.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}
