import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/circle_image_buttom.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/divider_line.dart';
import '../../widgets/login_title.dart';
import 'signup_form.dart';

class BodySignUp extends StatelessWidget {
  const BodySignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 0.7.sh,
        width: 1.sw,
        margin: EdgeInsets.only(
          top: 0.3.sh
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoginTitle(title: "Empecemos"),
            SignUpForm(),
          ],
        ),
      ),
    );
  }
}
