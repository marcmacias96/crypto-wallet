import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleChange extends StatelessWidget {
  final String title;

  const TitleChange({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50.w, top: 50.h),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline4!.copyWith(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 60.sp),
      ),
    );
  }
}
