import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionTable extends StatelessWidget {
  final String currency;
  final String value;

  const DescriptionTable({Key? key,
    required this.currency,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            currency,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 40.sp
            ),
          ),
          Text(
            r'$'+ value,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.black26,
                fontWeight: FontWeight.bold,
                fontSize: 30.sp
            ),
          ),
        ],
      ),
    );
  }
}
