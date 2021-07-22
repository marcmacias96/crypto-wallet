import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'description_table_history.dart';
import 'value_table_history.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 0.37.sh,
        left: 50.w,
        right: 50.w,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ultimos Movimientos',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 40.sp
              ),
            ),
            SizedBox(height: 10.h),
            Table(
              columnWidths: {1: FractionColumnWidth(0.3)},
              children: [
                TableRow( children: [
                  DescriptionTableHistory(date: '22/07/2021', contact: 'ODALIS VALENCIA' ),
                  ValueTableHistory(value: '5,00', signo: '+', valuecolor: Colors.green, monto: '56,00',),
                ]),
                TableRow( children: [
                  DescriptionTableHistory(date: '22/07/2021', contact: 'MARCO MACIAS' ),
                  ValueTableHistory(value: '5,00', signo: '-', valuecolor: Colors.red, monto: '51,00',),
                ]),
                TableRow( children: [
                  DescriptionTableHistory(date: '22/07/2021', contact: 'ODALIS VALENCIA' ),
                  ValueTableHistory(value: '5,00', signo: '+', valuecolor: Colors.green, monto: '56,00',),
                ]),
                TableRow( children: [
                  DescriptionTableHistory(date: '22/07/2021', contact: 'MARCO MACIAS' ),
                  ValueTableHistory(value: '5,00', signo: '-', valuecolor: Colors.red, monto: '51,00',),
                ]),
                TableRow( children: [
                  DescriptionTableHistory(date: '22/07/2021', contact: 'ODALIS VALENCIA' ),
                  ValueTableHistory(value: '5,00', signo: '+', valuecolor: Colors.green, monto: '56,00',),
                ]),
                TableRow( children: [
                  DescriptionTableHistory(date: '22/07/2021', contact: 'MARCO MACIAS' ),
                  ValueTableHistory(value: '5,00', signo: '-', valuecolor: Colors.red, monto: '51,00',),
                ]),

              ],
            ),

          ]
      ),
    );
  }
}
