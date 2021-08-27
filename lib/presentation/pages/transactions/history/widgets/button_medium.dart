import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonMedium extends StatelessWidget {
  final String text;
  final Color textcolor;
  final Color buttoncolor;
  final VoidCallback onTap;
  final Icon icon;
  const ButtonMedium({
    Key? key,
    required this.text,
    required this.onTap,
    required this.textcolor,
    required this.buttoncolor,
    required this.icon,
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
          width: 300.w,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: 30.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(9, 126, 234, 10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: textcolor, fontSize: 40.sp),
              ),
              icon,
            ],
          ),
        ),
      ),
    );
  }
}
