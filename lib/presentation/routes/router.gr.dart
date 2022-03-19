// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../auth/sign_in_page.dart' as _i1;
import '../auth/welcome_page.dart' as _i2;
import '../splash/splash_page.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SignInPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignInPage());
    },
    WelcomePageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.WelcomePage());
    },
    SplashPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SplashPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i4.RouteConfig(WelcomePageRoute.name, path: '/welcome-page'),
        _i4.RouteConfig(SplashPageRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInPageRoute extends _i4.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i2.WelcomePage]
class WelcomePageRoute extends _i4.PageRouteInfo<void> {
  const WelcomePageRoute()
      : super(WelcomePageRoute.name, path: '/welcome-page');

  static const String name = 'WelcomePageRoute';
}

/// generated route for
/// [_i3.SplashPage]
class SplashPageRoute extends _i4.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}
