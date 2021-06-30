import 'package:auto_route/annotations.dart';
import '../pages/auth/sign_in/sign_in.dart';
import '../pages/auth/sign_up/sign_up.dart';
import '../pages/home/home_page.dart';
import '../pages/splash/splash.dart';

@MaterialAutoRouter(
    replaceInRouteName: 'Page,Route',routes: <AutoRoute>[
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: SignInPage, fullscreenDialog: true),
  MaterialRoute(page: SignUpPage, fullscreenDialog: true),
  MaterialRoute(page: HomePage,fullscreenDialog: true),
])

class $AppRouter {}