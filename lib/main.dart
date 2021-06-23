import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'presentation/app_widget.dart';

void main() {
  runApp(Container(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: 'assets/img/splash.png',
        nextScreen: AppWidget(),
        splashTransition: SplashTransition.rotationTransition,
        splashIconSize: 200,
        duration: 1000,
      ),
    ),
  ));
}


