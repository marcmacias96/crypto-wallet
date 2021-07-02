import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../routes/router.gr.dart';
import '../auth/widgets/custom_button.dart';
import 'widgets/subtitle_welcome.dart';
import 'widgets/title_welcome.dart';
import 'widgets/welcome_logo.dart';


class Welcome1Page extends StatelessWidget {
  const Welcome1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:DecorationImage(
            image:ExactAssetImage ('assets/img/brackground.png'),
            fit: BoxFit.cover,
          )
      ),
      child: Center(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              SingleChildScrollView(
                child: Container(
                  //width: 1.sw,
                  margin: EdgeInsets.only(
                      top: 0.15.sh,

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      WelcomeLogo(imageSrc: 'assets/img/splash.png'),
                      TitleWelcome(title: 'My CryptoWallet'),
                      SizedBox(height: 50.h,),
                      SubtitleWelcome(subtitle: 'Tu billetera criptográfica personal '),
                      SizedBox(height: 400.h,),
                      CustomButton(
                          text: 'Empezar',
                          textcolor: Theme.of(context).primaryColor,
                          buttoncolor: Colors.white,
                          onTap: () => context.router.navigate(Welcome2Route()),

                      ),
                      SizedBox(height: 50.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Si tienes una cuenta  ",
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 40.sp
                            ),
                          ),
                          InkWell(
                            onTap: ()=> context.router.navigate(SignInRoute()),
                            child: Text("Iniciar Ahora",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 40.sp
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
