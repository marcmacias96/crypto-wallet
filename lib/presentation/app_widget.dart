import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/theme_data.dart';
import 'pages/splash/splash.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        builder: (ctx, nativeNavigator) {
          ScreenUtil.init(
              BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width,
                  maxHeight: MediaQuery.of(context).size.height),
              designSize: Size(750, 1334),
              orientation: Orientation.portrait
          );
          return Theme(
              data: AppTheme.lightTheme,
              child: SplashPage()
          );
        },
      ),
    );
  }
}
