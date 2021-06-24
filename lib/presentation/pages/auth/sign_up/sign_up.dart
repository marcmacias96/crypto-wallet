import 'package:crypto_wallet/presentation/pages/auth/sign_up/widgets/body_signup.dart';
import 'package:crypto_wallet/presentation/pages/auth/widgets/background_start.dart';
import 'package:flutter/material.dart';



class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          BackgroundStart(),
          BodySignUp()
        ],
      ),
    );
  }
}
