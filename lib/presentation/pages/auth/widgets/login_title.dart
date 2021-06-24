import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginTitle extends StatelessWidget {
  final String title;

  const LoginTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: 50.w,
          top: 50.h
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline4!.copyWith(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 70.sp
        ),
      ),
    );
  }
}
