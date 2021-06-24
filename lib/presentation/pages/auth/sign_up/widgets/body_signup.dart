import 'package:crypto_wallet/presentation/pages/auth/sign_up/widgets/signup_form.dart';
import 'package:crypto_wallet/presentation/pages/auth/widgets/circle_image_buttom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:crypto_wallet/presentation/pages/auth/widgets/login_title.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/divider_line.dart';

class BodySignUp extends StatelessWidget {
  const BodySignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 0.7.sh,
        width: 1.sw,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoginTitle(title: "Empecemos"),
            SignUpForm(),
            CustomButton(
              text: 'Registrarse Ahora',
              onTap: () {}
            ),
            DividerLine(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleImageButton(
                    imageSrc: 'assets/img/facebook.png',
                    onTap: () {}
                ),
                CircleImageButton(
                    imageSrc: 'assets/img/google.png',
                    onTap: () {}
                )
              ],
            ),
            SizedBox(height: 30.h,),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text("Si tiene una cuenta "),
                Text("Iniciar sesión",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w500
                  ),
                )
              ],
            )
          ],
        ),
      ) ,
    );
  }
}
