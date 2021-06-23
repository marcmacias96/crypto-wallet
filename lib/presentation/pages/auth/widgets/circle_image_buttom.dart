import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleImageButton extends StatelessWidget {
  final String imageSrc;
  final VoidCallback onTap;

  const CircleImageButton({
    Key? key,
    required this.imageSrc,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 90.h,
        width: 90.w,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: ExactAssetImage(
                   imageSrc,
                ),
              fit: BoxFit.contain
            )
        ),
      ),
    );
  }
}
