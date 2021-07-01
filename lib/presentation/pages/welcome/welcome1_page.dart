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
            Container(
              width: 1.sw,
              margin: EdgeInsets.only(
                  top: 0.35.sh
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WelcomeLogo(imageSrc: 'assets/img/splash.png'),
                  TitleWelcome(title: 'My CryptoWallet'),
                  SubtitleWelcome(subtitle: 'Tu billetera criptografica personal '),
                  SizedBox(height: 50.h,),
                  ButtonWelcome(
                      text: 'Empezar',
                      textcolor: Colors.white,
                      buttoncolor: Colors.black,

                  ),
                  SizedBox(height: 50.h,),
                  Row(
                    children: [
                      Text("Si no tienes una cuenta  "),
                      Text("Registrate Ahora",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
