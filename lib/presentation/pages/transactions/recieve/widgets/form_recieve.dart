import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../routes/router.gr.dart';
import '../../../auth/widgets/custom_button.dart';

String dropdownValue = '';
List<String> country = ["America","Brazil", "Canada","India","Mongalia","USA","China","Russia","Germany"];


class FormRecieve extends StatelessWidget {
  const FormRecieve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String qrData =
        "https://github.com/marcmacias96/crypto-wallet";
    return Form(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DropdownButton(
                items: country.map((itemsname) {
                  return DropdownMenuItem(
                    value: itemsname,
                    child: Text(itemsname),
                  );

                }).toList(),
                onChanged: (newvalue){

                },
                hint: Text('Escoge la moneda',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 40.sp
                  ),
                ),
                //value: dropdownValue,

              ),
              QrImage(
                //plce where the QR Image will be shown
                data: qrData,
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                children: [
                Container(
                  width: 270,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(qrData,style:Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 40.sp
                    ),),
                  ),
                ),
                IconButton(onPressed:() {
                  Clipboard.setData(new ClipboardData(text: qrData));
                  Scaffold.of(context).showSnackBar(
                      new SnackBar(content: new Text("Copiado en portapapeles"),));
                }, icon: Icon (Icons.copy))
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomButton(
                text: 'Hecho',
                textcolor: Colors.white,
                buttoncolor: Theme.of(context).primaryColor,
                onTap: () {  },

              ),
              CustomButton(
                text: 'Cancelar',
                textcolor: Colors.black,
                buttoncolor: Colors.white,
                onTap:  () => context.router.navigate(HistoryRoute()),
              )
            ],
          ),

        )

    );
  }
}
