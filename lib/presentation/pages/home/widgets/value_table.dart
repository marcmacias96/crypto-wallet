import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ValueTable extends StatelessWidget {
  final String value;
  final String signo;
  final Color valuecolor;
  const ValueTable({Key? key,
    required this.value,
    required this.signo,
    required this.valuecolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.only(
        right:40.w,
      ),
      child: Text(
        signo+value,
        style: Theme.of(context).textTheme.headline4!.copyWith(
            color: valuecolor,
            fontWeight: FontWeight.bold,
            fontSize: 50.sp
        ),
      ),
    );
  }
}
