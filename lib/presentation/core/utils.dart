import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Utils {
  // ignore: avoid_positional_boolean_parameters
  static void showSnackBar(String message, BuildContext context,
      {bool progress = false, Color? color}) {
    FocusScope.of(context).requestFocus(FocusNode());
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: progress ? Duration(days: 1) : Duration(seconds: 3),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 3,
              child: Text(
                message,
                softWrap: true,
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            progress
                ? FittedBox(
                    fit: BoxFit.scaleDown,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.blue[700],
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.blue[400]!),
                    ),
                  )
                : FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Padding(
                        padding: EdgeInsets.only(left: 0.5),
                        child: Icon(
                          Icons.error_outline,
                          size: 50.sp,
                        )))
          ],
        ),
        backgroundColor: color,
      ),
    );
  }
}
