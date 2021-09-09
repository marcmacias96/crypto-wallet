import 'package:crypto_wallet/presentation/pages/account/change_password/widgets/body_change_password.dart';
import 'package:flutter/material.dart';

import '../widgets/body_account_page.dart';
import 'widgets/top_change_password.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [TopChangePassword(), BodyChangePassword()],
        ),
      ),
    );
  }
}
