import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/transactions_title.dart';
import 'form_recieve.dart';

class BodyRecieve extends StatelessWidget {
  const BodyRecieve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 0.07.sh),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [TransactionTitle(title: 'Recibir'), FormRecieve()],
          ),
        ),
      ),
    );
  }
}
