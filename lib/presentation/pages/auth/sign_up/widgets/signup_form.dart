import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: 60.w,
          vertical: 30.h
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Usuario'
              ),
            ),
            SizedBox(height: 50.h,),
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
          ]
      ),

    )
    );
  }
}
