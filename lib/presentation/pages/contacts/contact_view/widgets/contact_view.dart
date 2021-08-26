import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'line_divider_contact.dart';

class ContactView extends StatelessWidget {
  final String name;
  final String address;
  const ContactView({
    Key? key,
    required this.name,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 0.06.sh,
        left: 20.w,
        right: 20.w,
      ),
      child: Column(
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 60.sp),
          ),
          SizedBox(
            height: 60.h,
          ),
          Container(
            width: 270,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                address,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40.sp),
              ),
            ),
          ),
          LineDividerContact(),
          Text(
            'Dirección',
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 35.sp),
          ),
          SizedBox(
            height: 150.h,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 150.w,
              right: 150.w,
            ),
            child: QrImage(
              //plce where the QR Image will be shown
              data: address,
            ),
          ),
        ],
      ),
    );
  }
}
