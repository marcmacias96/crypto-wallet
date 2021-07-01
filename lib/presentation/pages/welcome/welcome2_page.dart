import 'package:crypto_wallet/presentation/pages/wallet/widgets/button_welcome.dart';
import 'package:crypto_wallet/presentation/pages/welcome/widgets/body_welcome2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/subtitle_welcome.dart';
import 'widgets/title_welcome.dart';

class Welcome2Page extends StatelessWidget {
  const Welcome2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image:AssetImage ('assets/img/brackground.png'),
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
                    top: 0.05.sh,

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TitleWelcome(title: 'Te permite realizar transacciones'),
                    BodyWelcome2(),
                    SizedBox(height: 100.h,),
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
