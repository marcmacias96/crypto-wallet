import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundStart extends StatelessWidget {
  const BackgroundStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        'assets/img/brackground.png',
      height: 0.4.sh,
      fit: BoxFit.cover,
    );
  }
}
