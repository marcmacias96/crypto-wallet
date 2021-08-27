import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'transaction_item.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(
                left: 50.w,
              ),
              child: Text(
                'Ultimos Movimientos',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40.sp),
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              constraints: BoxConstraints(
                maxHeight: 0.42.sh,
              ),
              child: ListView.separated(
                padding: EdgeInsets.only(
                  bottom: 45.h + ScreenUtil().bottomBarHeight,
                  left: 50.w,
                  right: 60.w,
                ),
                itemBuilder: (context, index) {
                  return TransactionItem();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.h);
                },
                itemCount: 15,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
