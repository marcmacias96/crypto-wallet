import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageTable extends StatelessWidget {
  final String imageSrc;
  const ImageTable({Key? key, required this.imageSrc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 90.w,
      padding: EdgeInsets.all(0.0),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage(
                imageSrc,
              ),
              fit: BoxFit.contain)),
    );
  }
}
