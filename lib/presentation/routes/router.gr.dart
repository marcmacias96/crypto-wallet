// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/auth/sign_in/sign_in_page.dart' as _i4;
import '../pages/auth/sign_up/sign_up_page.dart' as _i5;
import '../pages/home/home_page.dart' as _i6;
import '../pages/splash/splash.dart' as _i3;
import '../pages/wallet/wallet_form/wallet_form_page.dart' as _i9;
import '../pages/welcome/welcome1_page.dart' as _i7;
import '../pages/welcome/welcome2_page.dart' as _i8;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashPage();
        }),
    SignInRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.SignInPage();
        },
        fullscreenDialog: true),
    SignUpRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.SignUpPage();
        },
        fullscreenDialog: true),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.HomePage();
        },
        fullscreenDialog: true),
    Welcome1Route.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.Welcome1Page();
        },
        fullscreenDialog: true),
    Welcome2Route.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.Welcome2Page();
        },
        fullscreenDialog: true),
    WalletFormRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.WalletFormPage();
        },
        fullscreenDialog: true)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(Welcome1Route.name, path: '/welcome1-page'),
        _i1.RouteConfig(Welcome2Route.name, path: '/welcome2-page'),
        _i1.RouteConfig(WalletFormRoute.name, path: '/wallet-form-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

class SignUpRoute extends _i1.PageRouteInfo {
  const SignUpRoute() : super(name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-page');

  static const String name = 'HomeRoute';
}

class Welcome1Route extends _i1.PageRouteInfo {
  const Welcome1Route() : super(name, path: '/welcome1-page');

  static const String name = 'Welcome1Route';
}

class Welcome2Route extends _i1.PageRouteInfo {
  const Welcome2Route() : super(name, path: '/welcome2-page');

  static const String name = 'Welcome2Route';
}

class WalletFormRoute extends _i1.PageRouteInfo {
  const WalletFormRoute() : super(name, path: '/wallet-form-page');

  static const String name = 'WalletFormRoute';
}
