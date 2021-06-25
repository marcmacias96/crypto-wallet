import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomButton({Key? key,
    required this.text,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Align(
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
              color: Theme.of(context).primaryColor
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline5!.copyWith(
                color: Colors.white,
                fontSize:40.sp
            ),
          ),
        ),
      ),
    );
  }
}
