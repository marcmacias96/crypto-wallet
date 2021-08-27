import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'utils.dart';

class ValueTable extends StatelessWidget {
  final double value;
  const ValueTable({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topRight,
        margin: EdgeInsets.only(
          right: 40.w,
        ),
        child: Text(Utils.getPriceChange(value),
            textAlign: TextAlign.end,
            style: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
                color: value >= 0 ? Colors.green : Colors.redAccent)));
  }
}
