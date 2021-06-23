import 'package:crypto_wallet/presentation/pages/auth/sign_in/widgets/body_login.dart';
import '../widgets/background_start.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          BackgroundStart(),
          BodyLogin()
        ],
      ),
    );
  }
}
