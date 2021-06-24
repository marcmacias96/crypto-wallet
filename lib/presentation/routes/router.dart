import 'package:auto_route/annotations.dart';
import '../pages/splash/splash.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: SplashPage, initial: true),
])

class $Router {}