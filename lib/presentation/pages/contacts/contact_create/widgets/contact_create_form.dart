import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../routes/router.gr.dart';
import '../../../auth/widgets/custom_button.dart';

class ContactCreateForm extends StatelessWidget {
  const ContactCreateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String qrCodeResult = "";
    TextEditingController controlador = TextEditingController();
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 40.h),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(hintText: 'Nombre'),
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 270,
                    child: TextField(
                      controller: controlador,
                      decoration: InputDecoration(hintText: 'Wallet address'),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  IconButton(onPressed:() async {
                    String codeSanner;
                    try {
                    codeSanner = await FlutterBarcodeScanner.scanBarcode(
                        "#ff6666", "Cancel", false, ScanMode.DEFAULT);
                    }on PlatformException {
                      codeSanner = 'Failed to get platform version.';
                    }
                    controlador.text = codeSanner;
                    } , icon: Icon (Icons.qr_code))
                    ],
              ),
              SizedBox(
                    height: 90.h,
                    ),
                    CustomButton(
                    text: 'Guardar',
                    textcolor: Colors.white,
                    buttoncolor: Theme.of(context).primaryColor,
                    onTap: () {  }
              ),
              CustomButton(
                text: 'Cancelar',
                textcolor: Colors.black,
                buttoncolor: Colors.white,
                onTap:  () => context.router.navigate(ContactListRoute()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
