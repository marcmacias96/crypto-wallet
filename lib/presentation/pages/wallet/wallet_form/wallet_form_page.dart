import 'package:flutter/material.dart';

import '../../auth/widgets/background_start.dart';
import 'widgets/body_wallet_form.dart';
class WalletFormPage extends StatelessWidget {
  const WalletFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          BackgroundStart(),
          BodyWalletForm()
        ],
      ),
    );
  }
}
