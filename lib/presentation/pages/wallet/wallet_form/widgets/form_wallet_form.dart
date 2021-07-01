import 'package:crypto_wallet/presentation/pages/auth/widgets/custom_button.dart';
import 'package:crypto_wallet/presentation/pages/wallet/widgets/button_welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormWalletForm extends StatelessWidget {
  const FormWalletForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:  EdgeInsets.symmetric(
        horizontal: 60.w,
        vertical: 40.h
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Nombre'
              ),
            ),
            SizedBox(height: 50.h,),
            TextField(
              decoration: InputDecoration(
                  hintText: 'ID Wallet'
              ),
            ),
            SizedBox(height: 60.h,),
            ButtonWelcome(
                text: 'Finalizar',
                textcolor: Colors.white,
                buttoncolor: Theme.of(context).primaryColor,

            ),

            ButtonWelcome(
                text: 'Cancelar',
                textcolor: Colors.black,
                buttoncolor: Colors.white,
            )
          ],
        ),

      ),

    );
  }
}
