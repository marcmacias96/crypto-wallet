import 'package:flutter/material.dart';

import 'widgets/body_account_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BodyAccountPage(),
      ),
    );
  }
}
