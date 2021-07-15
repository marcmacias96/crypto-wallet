import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../auth/widgets/custom_button.dart';

class ContactCreateForm extends StatelessWidget {
  const ContactCreateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              TextField(
                decoration: InputDecoration(hintText: 'Wallet address'),
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 90.h,
              ),
              CustomButton(
                text: 'Guardar',
                textcolor: Colors.white,
                buttoncolor: Theme.of(context).primaryColor,
                onTap: () {  },

              ),
              CustomButton(
                text: 'Cancelar',
                textcolor: Colors.black,
                buttoncolor: Colors.white,
                onTap: () {  },
              )
            ],
          ),
        ),
      ),
    );
  }
}
