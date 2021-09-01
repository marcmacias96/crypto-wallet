import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleImageHome extends StatelessWidget {
  final String imageSrc;
  final VoidCallback onTap;
  const CircleImageHome({Key? key, required this.imageSrc, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          top: 25.h,
          right: 40.w,
        ),
        height: 90.h,
        width: 90.w,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            shape: BoxShape.circle,
            image: DecorationImage(
                image: ExactAssetImage(
                  imageSrc,
                ),
                fit: BoxFit.contain)),
      ),
    );
  }
}
