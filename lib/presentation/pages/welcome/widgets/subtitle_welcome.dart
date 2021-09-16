import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubtitleWelcome extends StatelessWidget {
  final String subtitle;
  const SubtitleWelcome({Key? key, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        subtitle,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline4!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 40.sp),
      ),
    );
  }
}
