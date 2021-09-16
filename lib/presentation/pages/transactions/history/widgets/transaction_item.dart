import 'package:flutter/material.dart';

import 'description_table_history.dart';
import 'value_table_history.dart';

class TransactionItem extends StatelessWidget {
  final String address, date, value, sign;
  const TransactionItem({
    Key? key,
    required this.address,
    required this.date,
    required this.value,
    required this.sign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DescriptionTableHistory(date: date, contact: address),
        ValueTableHistory(
          value: value,
          signo: sign,
          valuecolor: sign == '+' ? Colors.green : Colors.red,
        ),
      ],
    );
  }
}
