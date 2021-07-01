import 'package:crypto_wallet/presentation/pages/wallet/widgets/button_welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:crypto_wallet/presentation/pages/auth/widgets/custom_button.dart';
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            SingleChildScrollView(
              child: Container(
                width: 1.sw,
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
                    ButtonWelcome(
                        text: 'Empezar',
                        textcolor: Theme.of(context).primaryColor,
                        buttoncolor: Colors.white,

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
                        Text("Iniciar Ahora",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 40.sp
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
    );
  }
}
