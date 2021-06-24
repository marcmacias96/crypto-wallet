import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'injection.dart';
import 'presentation/app_widget.dart';

Future<void>  main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}


