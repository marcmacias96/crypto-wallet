import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'description_table.dart';
import 'image_table.dart';
import 'utils.dart';
import 'value_table.dart';

class CoinItem extends StatelessWidget {
  final String image;
  final String currecy;
  final String value;
  final double price;

  const CoinItem({
    Key? key,
    required this.image,
    required this.currecy,
    required this.value,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var utils = Utils;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageTable(imageSrc: "assets/img/coin/$image.png"),
            SizedBox(
              width: 20.w,
            ),
            DescriptionTable(currency: currecy, value: value),
            SizedBox(
              width: 50.w,
            ),
            ValueTable(value: price),
          ],
        ));
  }
}
