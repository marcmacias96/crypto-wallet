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
        margin: EdgeInsets.only(top: 10.h, right: 50.w, left: 50.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonMedium(
                  icon: Icon(
                    Icons.north_east,
                    color: Colors.white,
                  ),
                  text: 'Enviar',
                  textcolor: Colors.white,
                  buttoncolor: Theme.of(context).primaryColor,
                  onTap: () => context.router.navigate(SendRoute()),
                ),
                ButtonMedium(
                  icon: Icon(
                    Icons.qr_code,
                    color: Colors.white,
                  ),
                  text: 'Recibir',
                  textcolor: Colors.white,
                  buttoncolor: Theme.of(context).primaryColor,
                  onTap: () => context.router.navigate(RecieveRoute()),
                ),
              ],
            ),
          ],
        ));
  }
}
