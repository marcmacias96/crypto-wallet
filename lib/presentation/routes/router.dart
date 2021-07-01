import 'package:auto_route/annotations.dart';
import 'package:crypto_wallet/presentation/pages/wallet/wallet_form/wallet_form_page.dart';
import 'package:crypto_wallet/presentation/pages/welcome/welcome1_page.dart';
import 'package:crypto_wallet/presentation/pages/welcome/welcome2_page.dart';
import '../pages/auth/sign_in/sign_in_page.dart';
import '../pages/auth/sign_up/sign_up_page.dart';
import '../pages/home/home_page.dart';
import '../pages/splash/splash.dart';

@MaterialAutoRouter(
    replaceInRouteName: 'Page,Route',routes: <AutoRoute>[
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: SignInPage, fullscreenDialog: true),
  MaterialRoute(page: SignUpPage, fullscreenDialog: true),
  MaterialRoute(page: HomePage,fullscreenDialog: true),
  MaterialRoute(page: Welcome1Page,fullscreenDialog: true),
  MaterialRoute(page: Welcome2Page,fullscreenDialog: true),
  MaterialRoute(page: WalletFormPage,fullscreenDialog: true),
])

class $AppRouter {}