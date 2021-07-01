import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWelcome extends StatelessWidget {

  final String text;
  final Color textcolor;
  final Color buttoncolor;

  const ButtonWelcome({Key? key,
    required this.text,
    required this.textcolor,
    required this.buttoncolor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 80.h,
        width: 500.w,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(
            vertical: 30.h
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: buttoncolor
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline5!.copyWith(
              color: textcolor,
              fontSize:40.sp
          ),
        ),
      ),
    );
  }
}
