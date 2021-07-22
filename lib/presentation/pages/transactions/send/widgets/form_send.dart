import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../routes/router.gr.dart';
import '../../../auth/widgets/custom_button.dart';

String dropdownValue = '';
List<String> country = ["America","Brazil", "Canada","India","Mongalia","USA","China","Russia","Germany"];

class FormSend extends StatelessWidget {
  const FormSend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Ingrese el monto',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40.sp
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              TextField(
                decoration: InputDecoration(hintText: r'$'+ '0.00'),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black,fontSize: 90.sp),
              ),
              SizedBox(
                height: 50.h,
              ),
              DropdownButton(
                items: country.map((itemsname) {
                  return DropdownMenuItem(
                    value: itemsname,
                    child: Text(itemsname),
                  );

                }).toList(),
                onChanged: (newvalue){

                },
                hint: Text('Escoge el contacto',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 40.sp
                  ),
                ),
                //value: dropdownValue,

              ),
              SizedBox(
                height: 300.h,
              ),
              CustomButton(
                text: 'Enviar',
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
