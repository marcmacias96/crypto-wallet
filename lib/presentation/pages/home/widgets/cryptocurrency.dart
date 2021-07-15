import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'description_table.dart';
import 'image_table.dart';
import 'value_table.dart';


class Cryptocurrency extends StatelessWidget {
  const Cryptocurrency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 0.30.sh,
        left: 50.w,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Cryptomonedas',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 40.sp
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              children: [
                ImageTable(imageSrc: "assets/img/bitcoin.png"),
                SizedBox(width: 50.w),
                DescriptionTable(currency: 'Bitcoin', value: '35,00'),
                SizedBox(width: 250.w),
                ValueTable(value: '5,3', signo: '+', valuecolor: Colors.green),
              ],
            ),
            SizedBox(height: 30.h),
            Row(
              children: [
                ImageTable(imageSrc: "assets/img/ethereum.png"),
                SizedBox(width: 50.w),
                DescriptionTable(currency: 'Etheriu', value: '35,00'),
                SizedBox(width: 250.w),
                ValueTable(value: '2,2', signo: '-', valuecolor: Colors.red),
              ],
            ),
            SizedBox(height: 30.h),
            Row(
              children: [
                ImageTable(imageSrc: "assets/img/bitcoin.png"),
                SizedBox(width: 50.w),
                DescriptionTable(currency: 'Bitcoin', value: '35,00'),
                SizedBox(width: 250.w),
                ValueTable(value: '5,3', signo: '+', valuecolor: Colors.green),
              ],
            ),
            SizedBox(height: 30.h),
            Row(
              children: [
                ImageTable(imageSrc: "assets/img/bitcoin.png"),
                SizedBox(width: 50.w),
                DescriptionTable(currency: 'Bitcoin', value: '35,00'),
                SizedBox(width: 250.w),
                ValueTable(value: '5,3', signo: '+', valuecolor: Colors.green),
              ],
            ),
            SizedBox(height: 30.h),
            Row(
              children: [
                ImageTable(imageSrc: "assets/img/bitcoin.png"),
                SizedBox(width: 50.w),
                DescriptionTable(currency: 'Bitcoin', value: '35,00'),
                SizedBox(width: 250.w),
                ValueTable(value: '5,3', signo: '+', valuecolor: Colors.green),
              ],
            )
          ]
      ),
    );
  }
}
