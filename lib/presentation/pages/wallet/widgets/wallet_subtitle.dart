import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletSubtitle extends StatelessWidget {
  final String subtitle;

  const WalletSubtitle({Key? key, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50.w, right: 50.w, top: 50.h),
      child: Text(
        subtitle,
        style: Theme.of(context).textTheme.headline4!.copyWith(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40.sp),
      ),
    );
  }
}
