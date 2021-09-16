import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../routes/router.gr.dart';
import '../auth/widgets/custom_button.dart';
import 'widgets/body_welcome2.dart';
import 'widgets/title_welcome.dart';

class Welcome2Page extends StatelessWidget {
  const Welcome2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/img/brackground.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            SingleChildScrollView(
              child: Container(
                //width: 1.sw,
                margin: EdgeInsets.only(
                  top: 0.05.sh,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TitleWelcome(title: 'Te permite realizar transacciones'),
                    BodyWelcome2(),
                    SizedBox(
                      height: 100.h,
                    ),
                    CustomButton(
                      text: 'Registrarse',
                      textcolor: Theme.of(context).primaryColor,
                      buttoncolor: Colors.white,
                      onTap: () => context.router.navigate(SignUpRoute()),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Si tienes una cuenta  ",
                          style:
                              TextStyle(color: Colors.white54, fontSize: 40.sp),
                        ),
                        InkWell(
                          onTap: () => context.router.navigate(SignInRoute()),
                          child: Text(
                            "Iniciar Ahora",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 40.sp),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
