import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionTableHistory extends StatelessWidget {
  final String date;
  final String contact;
  const DescriptionTableHistory({
    Key? key,
    required this.date,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            contact,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 30.sp),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            date,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.black26,
                fontWeight: FontWeight.bold,
                fontSize: 30.sp),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
