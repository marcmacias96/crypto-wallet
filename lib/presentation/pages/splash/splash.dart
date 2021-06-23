import 'package:crypto_wallet/presentation/pages/auth/sign_in/sign_in.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignIn();
  }
}
