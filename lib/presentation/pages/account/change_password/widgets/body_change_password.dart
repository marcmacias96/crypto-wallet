import 'package:crypto_wallet/presentation/pages/account/change_password/widgets/form_change_password.dart';
import 'package:crypto_wallet/presentation/pages/account/change_password/widgets/title_chage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyChangePassword extends StatelessWidget {
  const BodyChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 0.2.sh,
        right: 0.5.w,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleChange(title: 'Nueva contraseña'),
          FormChangePassword()
        ],
      ),
    );
  }
}
