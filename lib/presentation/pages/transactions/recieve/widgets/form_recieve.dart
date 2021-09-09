import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../../utils/user_preference.dart';
import '../../../auth/widgets/custom_button.dart';

class FormRecieve extends StatelessWidget {
  const FormRecieve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var qrData = UserPreference.getWalletId();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 50.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 50.w, right: 50.w, top: 50.h),
            alignment: Alignment.center,
            child: Text(
              'Recibir',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 70.sp),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          QrImage(
            //plce where the QR Image will be shown
            data: qrData,
          ),
          SizedBox(
            height: 50.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 0.72.sw,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    qrData,
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 40.sp),
                  ),
                ),
              ),
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: qrData));
                    // ignore: deprecated_member_use
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("Copiado en portapapeles"),
                    ));
                  },
                  icon: Icon(Icons.copy))
            ],
          ),
          SizedBox(
            height: 150.h,
          ),
          CustomButton(
            text: 'Hecho',
            textcolor: Colors.white,
            buttoncolor: Theme.of(context).primaryColor,
            onTap: () => context.router.pop(),
          ),
        ],
      ),
    );
  }
}
