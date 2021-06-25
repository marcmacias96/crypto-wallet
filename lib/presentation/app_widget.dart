import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../aplication/auth/auth_bloc.dart';
import '../injection.dart';
import './routes/router.gr.dart';
import 'core/theme_data.dart';
import 'pages/splash/splash.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = RouterNav();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(750, 1334),
      builder: () {
        return BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(
              const AuthEvent.authCheckRequested()
          ),
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            title: 'Crypto Wallet',
            builder: (ctx, widget) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: widget!,
              );
            },
            theme: AppTheme.lightTheme,
          ),
        );
      },
    );
  }
}
