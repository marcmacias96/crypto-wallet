import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'injection.dart';
import 'my_bloc_observer.dart';
import 'presentation/app_widget.dart';


Future<void>  main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  //Inicializo el watcher de los bloc
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp();
  Hive.init((await getApplicationDocumentsDirectory()).path);
  await Hive.openBox('preferences');
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


