import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionContact extends StatelessWidget {
  final String name;
  final String address;
  const DescriptionContact({
    Key? key,
    required this.name,
    required this.address

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
          height: 10.h,
          ),
          Text(
            name,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 50.sp
            ),
          ),

          Text(
            address,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.black26,
                fontWeight: FontWeight.normal,
                fontSize: 30.sp
            ),
          ),
        ],
      ),
    );
  }
}

