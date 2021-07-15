import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleContact extends StatelessWidget {
  final String title;
  const TitleContact({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 40.h,
        left:50.w,
      ),
      child: Text(
        title,
        textAlign:  TextAlign.center,
        style: Theme.of(context).textTheme.headline4!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 70.sp
        ),
      ),
    );
  }
}
