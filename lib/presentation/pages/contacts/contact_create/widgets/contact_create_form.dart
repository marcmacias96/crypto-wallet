import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../aplication/contact/contact_form_bloc/contact_form_bloc.dart';
import '../../../../core/utils.dart';
import '../../../../routes/router.gr.dart';
import '../../../auth/widgets/custom_button.dart';

class ContactCreateForm extends StatelessWidget {
  const ContactCreateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controlador = TextEditingController();
    return BlocConsumer<ContactFormBloc, ContactFormState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(() {}, (either) {
          either.fold((failure) {
            Utils.showSnackBar(
                failure.maybeMap(
                  userNameAlreadyExits: (_) => "Nombre de usuario ya en uso",
                  doesNotExist: (_) => "No existe dirección",
                  insufficientPermissions: (_) => "Permisos insuficientes",
                  unableToUpdate: (_) => "No se puede actualizar",
                  noInternet: (_) => "No tiene conexión",
                  orElse: () => "Error inesperado",
                ),
                context,
                color: Colors.red);
          }, (_) {
            context.router.navigate(ContactListRoute());
          });
        });
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 40.h),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Nombre'),
                    style: TextStyle(color: Colors.black),
                    autocorrect: false,
                    onChanged: (value) => context
                        .read<ContactFormBloc>()
                        .add(ContactFormEvent.nameChanged(value)),
                    maxLength: 20,
                    validator: (_) => context
                        .read<ContactFormBloc>()
                        .state
                        .contact
                        .name
                        .value
                        .fold(
                          (failure) => failure.maybeMap(
                            empty: (_) => 'Ingrese un Nombre',
                            invalidValue: (_) =>
                                'No se permite saltos de linea',
                            exceedingLength: (_) => 'Maximo 20 caracteres',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 270,
                        child: TextFormField(
                          controller: controlador,
                          decoration:
                              InputDecoration(hintText: 'Wallet address'),
                          style: TextStyle(color: Colors.black),
                          autocorrect: false,
                          onChanged: (value) => context
                              .read<ContactFormBloc>()
                              .add(ContactFormEvent.addressChanged(value)),
                          maxLength: 42,
                          validator: (_) => context
                              .read<ContactFormBloc>()
                              .state
                              .contact
                              .address
                              .value
                              .fold(
                                (failure) => failure.maybeMap(
                                  empty: (_) => 'Ingrese una dirección',
                                  invalidValue: (_) =>
                                      'No se permite saltos de linea',
                                  minLength: (_) => 'Minimo 42 caracteres',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            String codeSanner;
                            try {
                              codeSanner = '';
                              // await FlutterBarcodeScanner.scanBarcode(
                              //     "#ff6666",
                              //     "Cancel",
                              //     false,
                              //     ScanMode.DEFAULT);
                            } on PlatformException {
                              codeSanner = 'Failed to get platform version.';
                            }
                            controlador.text = codeSanner;
                            context.read<ContactFormBloc>().add(
                                ContactFormEvent.addressChanged(codeSanner));
                          },
                          icon: Icon(Icons.qr_code))
                    ],
                  ),
                  SizedBox(
                    height: 90.h,
                  ),
                  CustomButton(
                      text: 'Guardar',
                      textcolor: Colors.white,
                      buttoncolor: Theme.of(context).primaryColor,
                      onTap: () => context
                          .read<ContactFormBloc>()
                          .add(ContactFormEvent.save())),
                  CustomButton(
                    text: 'Cancelar',
                    textcolor: Colors.black,
                    buttoncolor: Colors.white,
                    onTap: () => context.router.navigate(ContactListRoute()),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
