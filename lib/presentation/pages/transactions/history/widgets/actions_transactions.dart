import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../routes/router.gr.dart';
import 'button_medium.dart';

class ActionsTransactions extends StatelessWidget {
  const ActionsTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 0.27.sh,
          right:50.w,
          left: 50.w
      ),
      child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonMedium(
                  text: 'Enviar',
                  textcolor: Colors.white,
                  buttoncolor: Theme.of(context).primaryColor,
                  onTap: ()=> context.router.navigate(SendRoute()),
                ),
                ButtonMedium(
                  text: 'Recibir',
                  textcolor: Colors.white,
                  buttoncolor: Theme.of(context).primaryColor,
                  onTap: ()=> context.router.navigate(RecieveRoute()),
                ),
              ],
            ),
          ],
        )
    );
  }
}
