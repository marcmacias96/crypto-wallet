import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubtitleWelcome extends StatelessWidget {
  final String subtitle;
  const SubtitleWelcome({Key? key,required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 50.h
      ),
      alignment: Alignment.center,
      child: Text(
        subtitle,
        style: Theme.of(context).textTheme.headline4!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.sp
        ),
      ),
    );
  }
}
