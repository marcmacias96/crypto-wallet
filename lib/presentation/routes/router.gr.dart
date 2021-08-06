// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../pages/auth/sign_in/sign_in_page.dart' as _i3;
import '../pages/auth/sign_up/sign_up_page.dart' as _i4;
import '../pages/contacts/contact_create/contact_create_page.dart' as _i9;
import '../pages/contacts/contact_list/contact_list_page.dart' as _i10;
import '../pages/home/home_page.dart' as _i5;
import '../pages/splash/splash.dart' as _i2;
import '../pages/transactions/history/history_page.dart' as _i11;
import '../pages/transactions/recieve/recieve_page.dart' as _i12;
import '../pages/transactions/send/send_page.dart' as _i13;
import '../pages/wallet/wallet_form/wallet_form_page.dart' as _i8;
import '../pages/welcome/welcome1_page.dart' as _i6;
import '../pages/welcome/welcome2_page.dart' as _i7;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i2.SplashPage());
    },
    SignInRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i3.SignInPage(), fullscreenDialog: true);
    },
    SignUpRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i4.SignUpPage(), fullscreenDialog: true);
    },
    HomeRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i5.HomePage(), fullscreenDialog: true);
    },
    Welcome1Route.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i6.Welcome1Page(),
          fullscreenDialog: true);
    },
    Welcome2Route.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i7.Welcome2Page(),
          fullscreenDialog: true);
    },
    WalletFormRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i8.WalletFormPage(),
          fullscreenDialog: true);
    },
    ContactCreateRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i9.ContactCreatePage(),
          fullscreenDialog: true);
    },
    ContactListRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i10.ContactListPage(),
          fullscreenDialog: true);
    },
    HistoryRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i11.HistoryPage(),
          fullscreenDialog: true);
    },
    RecieveRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i12.RecievePage(),
          fullscreenDialog: true);
    },
    SendRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i13.SendPage(), fullscreenDialog: true);
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(Welcome1Route.name, path: '/welcome1-page'),
        _i1.RouteConfig(Welcome2Route.name, path: '/welcome2-page'),
        _i1.RouteConfig(WalletFormRoute.name, path: '/wallet-form-page'),
        _i1.RouteConfig(ContactCreateRoute.name, path: '/contact-create-page'),
        _i1.RouteConfig(ContactListRoute.name, path: '/contact-list-page'),
        _i1.RouteConfig(HistoryRoute.name, path: '/history-page'),
        _i1.RouteConfig(RecieveRoute.name, path: '/recieve-page'),
        _i1.RouteConfig(SendRoute.name, path: '/send-page')
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

class ContactCreateRoute extends _i1.PageRouteInfo {
  const ContactCreateRoute() : super(name, path: '/contact-create-page');

  static const String name = 'ContactCreateRoute';
}

class ContactListRoute extends _i1.PageRouteInfo {
  const ContactListRoute() : super(name, path: '/contact-list-page');

  static const String name = 'ContactListRoute';
}

class HistoryRoute extends _i1.PageRouteInfo {
  const HistoryRoute() : super(name, path: '/history-page');

  static const String name = 'HistoryRoute';
}

class RecieveRoute extends _i1.PageRouteInfo {
  const RecieveRoute() : super(name, path: '/recieve-page');

  static const String name = 'RecieveRoute';
}

class SendRoute extends _i1.PageRouteInfo {
  const SendRoute() : super(name, path: '/send-page');

  static const String name = 'SendRoute';
}
