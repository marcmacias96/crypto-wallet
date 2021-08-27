import 'package:flutter/material.dart';

import 'description_table_history.dart';
import 'value_table_history.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DescriptionTableHistory(date: '22/07/2021', contact: 'ODALIS VALENCIA'),
        ValueTableHistory(
          value: '5,00',
          signo: '+',
          valuecolor: Colors.green,
          monto: '56,00',
        ),
      ],
    );
  }
}
