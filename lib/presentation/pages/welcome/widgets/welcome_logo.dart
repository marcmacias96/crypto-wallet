import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeLogo extends StatelessWidget {

  final String imageSrc;
  const WelcomeLogo({Key? key, required this.imageSrc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 70.w,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: ExactAssetImage(imageSrc)
        )
      ),
    );
  }
}
