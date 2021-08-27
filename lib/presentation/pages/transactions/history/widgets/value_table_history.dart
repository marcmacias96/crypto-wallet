import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ValueTableHistory extends StatelessWidget {
  final String value;
  final String signo;
  final Color valuecolor;
  final String monto;
  const ValueTableHistory(
      {Key? key,
      required this.value,
      required this.signo,
      required this.valuecolor,
      required this.monto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            signo + value,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: valuecolor,
                fontWeight: FontWeight.bold,
                fontSize: 35.sp),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            r'$' + monto,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.black26,
                fontWeight: FontWeight.bold,
                fontSize: 30.sp),
          ),
        ],
      ),
    );
  }
}
