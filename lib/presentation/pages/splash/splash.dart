import 'package:flutter/material.dart';
import '../auth/sign_up/sign_up.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignUp();
  }
}