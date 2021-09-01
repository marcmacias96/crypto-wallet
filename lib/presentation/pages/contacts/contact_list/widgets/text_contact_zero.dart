import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextContactZero extends StatelessWidget {
  final String title;
  const TextContactZero({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30.h,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline4!.copyWith(
            color: Colors.black12,
            fontWeight: FontWeight.normal,
            fontSize: 50.sp),
      ),
    );
  }
}
