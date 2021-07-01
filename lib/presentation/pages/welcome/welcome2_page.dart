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
                  TitleWelcome(title: 'Te permite realizar transacciones'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.account_balance_wallet,
                        color: Colors.white,
                        size: 36.0,
                      ),
                      Icon(
                        Icons.input,
                        color: Colors.white,
                        size: 36.0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SubtitleWelcome(subtitle: 'Almacenar'),
                      SubtitleWelcome(subtitle: 'Enviar')
                      
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.monetization_on,
                        color: Colors.white,
                        size: 36.0,
                      ),
                      Icon(
                        Icons.track_changes,
                        color: Colors.white,
                        size: 36.0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SubtitleWelcome(subtitle: 'Recibir'),
                      SubtitleWelcome(subtitle: 'Rastrear')
                    ],
                  ),
                  SubtitleWelcome(subtitle: 'Tu billetera criptografica personal '),
                  SizedBox(height: 50.h,),
                  /*CustomButton(
                      text: 'Registrarse',
                      textcolor: Theme.of(context).primaryColor,
                      buttoncolor: Colors.white,
                      onTap: ;
                  ),
                  SizedBox(height: 50.h,),
                  Row(
                    children: [
                      Text("Si no tienes una cuenta  "),
                      InkWell(
                        onTap: () => context.router.replace(SignUpRoute()),
                        child: Text("Registrate Ahora",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      )
                    ],
                  ),*/
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
