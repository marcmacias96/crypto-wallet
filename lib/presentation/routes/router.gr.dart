// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i20;

import '../../domain/contacts/contact.dart' as _i21;
import '../pages/account/account_page.dart' as _i4;
import '../pages/account/change_password/change_password_page.dart' as _i5;
import '../pages/account/info_app/info_app_page.dart' as _i6;
import '../pages/auth/sign_in/sign_in_page.dart' as _i7;
import '../pages/auth/sign_up/sign_up_page.dart' as _i8;
import '../pages/contacts/contact_create/contact_create_page.dart' as _i13;
import '../pages/contacts/contact_list/contact_list_page.dart' as _i16;
import '../pages/contacts/contact_view/contact_view_page.dart' as _i14;
import '../pages/home/home_page.dart' as _i9;
import '../pages/layout/layout_page.dart' as _i3;
import '../pages/splash/splash.dart' as _i2;
import '../pages/transactions/history/history_page.dart' as _i17;
import '../pages/transactions/recieve/recieve_page.dart' as _i18;
import '../pages/transactions/send/select/contact_select_page.dart' as _i15;
import '../pages/transactions/send/send_page.dart' as _i19;
import '../pages/wallet/wallet_form/wallet_form_page.dart' as _i12;
import '../pages/welcome/welcome1_page.dart' as _i10;
import '../pages/welcome/welcome2_page.dart' as _i11;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i2.SplashPage());
    },
    LayoutRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i3.LayoutPage());
    },
    AccountRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i4.AccountPage());
    },
    ChangePasswordRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i5.ChangePasswordPage());
    },
    InfoAppRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i6.InfoAppPage());
    },
    SignInRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i7.SignInPage(), fullscreenDialog: true);
    },
    SignUpRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i8.SignUpPage(), fullscreenDialog: true);
    },
    HomeRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i9.HomePage(), fullscreenDialog: true);
    },
    Welcome1Route.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i10.Welcome1Page(),
          fullscreenDialog: true);
    },
    Welcome2Route.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i11.Welcome2Page(),
          fullscreenDialog: true);
    },
    WalletFormRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i12.WalletFormPage(),
          fullscreenDialog: true);
    },
    ContactCreateRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i13.ContactCreatePage());
    },
    ContactViewRoute.name: (entry) {
      var args = entry.routeData.argsAs<ContactViewRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i14.ContactViewPage(key: args.key, contact: args.contact));
    },
    ContactSelectRoute.name: (entry) {
      var args = entry.routeData.argsAs<ContactSelectRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child:
              _i15.ContactSelectPage(key: args.key, onSelect: args.onSelect));
    },
    ContactListRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i16.ContactListPage(),
          fullscreenDialog: true);
    },
    HistoryRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i17.HistoryPage(),
          fullscreenDialog: true);
    },
    RecieveRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i18.RecievePage(),
          fullscreenDialog: true);
    },
    SendRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i19.SendPage(), fullscreenDialog: true);
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(LayoutRoute.name, path: '/layout-page'),
        _i1.RouteConfig(AccountRoute.name, path: '/account-page'),
        _i1.RouteConfig(ChangePasswordRoute.name,
            path: '/change-password-page'),
        _i1.RouteConfig(InfoAppRoute.name, path: '/info-app-page'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(Welcome1Route.name, path: '/welcome1-page'),
        _i1.RouteConfig(Welcome2Route.name, path: '/welcome2-page'),
        _i1.RouteConfig(WalletFormRoute.name, path: '/wallet-form-page'),
        _i1.RouteConfig(ContactCreateRoute.name, path: '/contact-create-page'),
        _i1.RouteConfig(ContactViewRoute.name, path: '/contact-view-page'),
        _i1.RouteConfig(ContactSelectRoute.name, path: '/contact-select-page'),
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

class LayoutRoute extends _i1.PageRouteInfo {
  const LayoutRoute() : super(name, path: '/layout-page');

  static const String name = 'LayoutRoute';
}

class AccountRoute extends _i1.PageRouteInfo {
  const AccountRoute() : super(name, path: '/account-page');

  static const String name = 'AccountRoute';
}

class ChangePasswordRoute extends _i1.PageRouteInfo {
  const ChangePasswordRoute() : super(name, path: '/change-password-page');

  static const String name = 'ChangePasswordRoute';
}

class InfoAppRoute extends _i1.PageRouteInfo {
  const InfoAppRoute() : super(name, path: '/info-app-page');

  static const String name = 'InfoAppRoute';
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

class ContactViewRoute extends _i1.PageRouteInfo<ContactViewRouteArgs> {
  ContactViewRoute({_i20.Key? key, required _i21.Contact contact})
      : super(name,
            path: '/contact-view-page',
            args: ContactViewRouteArgs(key: key, contact: contact));

  static const String name = 'ContactViewRoute';
}

class ContactViewRouteArgs {
  const ContactViewRouteArgs({this.key, required this.contact});

  final _i20.Key? key;

  final _i21.Contact contact;
}

class ContactSelectRoute extends _i1.PageRouteInfo<ContactSelectRouteArgs> {
  ContactSelectRoute({_i20.Key? key, required Function onSelect})
      : super(name,
            path: '/contact-select-page',
            args: ContactSelectRouteArgs(key: key, onSelect: onSelect));

  static const String name = 'ContactSelectRoute';
}

class ContactSelectRouteArgs {
  const ContactSelectRouteArgs({this.key, required this.onSelect});

  final _i20.Key? key;

  final Function onSelect;
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
