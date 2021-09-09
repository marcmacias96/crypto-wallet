import 'package:crypto_wallet/presentation/pages/auth/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormChangePassword extends StatelessWidget {
  const FormChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: 'Contraseña actual'),
              autocorrect: false,
              obscureText: true,
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 50.h,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Contraseña nueva'),
              autocorrect: false,
              obscureText: true,
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 50.h,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Confirmar contraseña'),
              autocorrect: false,
              obscureText: true,
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 400.h,
            ),
            CustomButton(
                text: 'Cambiar Contraseña',
                textcolor: Colors.white,
                buttoncolor: Theme.of(context).primaryColor,
                onTap: () {})
          ],
        ),
      ),
    );
  }
}
