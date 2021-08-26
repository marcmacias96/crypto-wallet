import 'package:auto_route/annotations.dart';

import '../pages/auth/sign_in/sign_in_page.dart';
import '../pages/auth/sign_up/sign_up_page.dart';
import '../pages/contacts/contact_create/contact_create_page.dart';
import '../pages/contacts/contact_list/contact_list_page.dart';
import '../pages/contacts/contact_view/contact_view_page.dart';
import '../pages/home/home_page.dart';
import '../pages/splash/splash.dart';
import '../pages/transactions/history/history_page.dart';
import '../pages/transactions/recieve/recieve_page.dart';
import '../pages/transactions/send/send_page.dart';
import '../pages/wallet/wallet_form/wallet_form_page.dart';
import '../pages/welcome/welcome1_page.dart';
import '../pages/welcome/welcome2_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: SignInPage, fullscreenDialog: true),
  MaterialRoute(page: SignUpPage, fullscreenDialog: true),
  MaterialRoute(page: HomePage, fullscreenDialog: true),
  MaterialRoute(page: Welcome1Page, fullscreenDialog: true),
  MaterialRoute(page: Welcome2Page, fullscreenDialog: true),
  MaterialRoute(page: WalletFormPage, fullscreenDialog: true),
  MaterialRoute(page: ContactCreatePage, fullscreenDialog: true),
  MaterialRoute(page: ContactViewPage, fullscreenDialog: true),
  MaterialRoute(page: ContactListPage, fullscreenDialog: true),
  MaterialRoute(page: HistoryPage, fullscreenDialog: true),
  MaterialRoute(page: RecievePage, fullscreenDialog: true),
  MaterialRoute(page: SendPage, fullscreenDialog: true),
])
class $AppRouter {}
