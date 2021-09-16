import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ValueTableHistory extends StatelessWidget {
  final String value;
  final String signo;
  final Color valuecolor;
  const ValueTableHistory({
    Key? key,
    required this.value,
    required this.signo,
    required this.valuecolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            signo + value,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: valuecolor,
                fontWeight: FontWeight.bold,
                fontSize: 35.sp),
          ),
        ],
      ),
    );
  }
}
