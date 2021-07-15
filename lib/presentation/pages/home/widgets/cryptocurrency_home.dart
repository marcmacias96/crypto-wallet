import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'description_table.dart';
import 'image_table.dart';
import 'value_table.dart';


class CryptocurrencyHome extends StatelessWidget {
  const CryptocurrencyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 0.30.sh,
        left: 50.w,
        right: 50.w,
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
            Table(
              columnWidths: {0: FractionColumnWidth(0.2)},
              children: [
                TableRow( children: [
                  ImageTable(imageSrc: "assets/img/bitcoin.png"),
                  DescriptionTable(currency: 'Bitcoin', value: '35,00'),
                  ValueTable(value: '5,3', signo: '+', valuecolor: Colors.green),
                ]),
                TableRow( children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,children:[ImageTable(imageSrc: "assets/img/ethereum.png"),]),
                  DescriptionTable(currency: 'Etherium', value: '35,00'),
                  ValueTable(value: '2,2', signo: '-', valuecolor: Colors.red),
                ]),
                TableRow( children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,children:[ImageTable(imageSrc: "assets/img/bitcoin.png"),]),
                  DescriptionTable(currency: 'Bitcoin', value: '35,00'),
                  ValueTable(value: '5,3', signo: '+', valuecolor: Colors.green),
                ]),
                TableRow( children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,children:[ImageTable(imageSrc: "assets/img/bitcoin.png"),]),
                  DescriptionTable(currency: 'Bitcoin', value: '35,00'),
                  ValueTable(value: '5,3', signo: '+', valuecolor: Colors.green),
                ]),
                TableRow( children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,children:[ImageTable(imageSrc: "assets/img/ethereum.png"),]),
                  DescriptionTable(currency: 'Bitcoin', value: '35,00'),
                  ValueTable(value: '5,3', signo: '+', valuecolor: Colors.green),
                ]),

              ],
            ),

          ]
      ),
    );
  }
}
