import 'package:flutter/material.dart';
import '../widgets/background_start.dart';
import 'widgets/body_login.dart';

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
