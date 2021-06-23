import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:  EdgeInsets.symmetric(
            horizontal: 60.w,
            vertical: 50.h
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Email'
              ),
            ),
            SizedBox(height: 50.h,),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Contraseña'
              ),
            ),
            SizedBox(height: 50.h,),
            Row(
              children: [
                Text("Si no tienes una cuenta  "),
                Text("Registrate Ahora",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w500
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
