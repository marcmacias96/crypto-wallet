import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/login_title.dart';
import 'signin_form.dart';

class BodyLogin extends StatelessWidget {

  const BodyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      margin: EdgeInsets.only(top: 0.29.sh),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LoginTitle(title: 'Bienvenido'),
          SignInForm(),
        ],
      ),
    );
  }
}
