import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'subtitle_welcome.dart';

class BodyWelcome2 extends StatelessWidget {
  const BodyWelcome2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      margin: EdgeInsets.only(top: 0.10.sh),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.account_balance_wallet,
                    color: Colors.white,
                    size: 100.0,
                  ),
                  SubtitleWelcome(subtitle: 'Almacenar'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.input,
                    color: Colors.white,
                    size: 100.0,
                  ),
                  SubtitleWelcome(subtitle: 'Enviar')
                ],
              ),
            ],
          ),
          SizedBox(
            height: 100.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.monetization_on,
                    color: Colors.white,
                    size: 100.0,
                  ),
                  SubtitleWelcome(subtitle: 'Recibir')
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.track_changes,
                    color: Colors.white,
                    size: 100.0,
                  ),
                  SubtitleWelcome(subtitle: 'Rastrear')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
