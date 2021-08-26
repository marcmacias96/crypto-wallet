import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../aplication/contact/contact_form_bloc/contact_form_bloc.dart';
import '../../../../../domain/contacts/contact.dart';
import '../../../auth/widgets/custom_button.dart';

class ContactEditForm extends StatefulWidget {
  final Contact contact;
  final bool showErrorMessages;

  const ContactEditForm({
    Key? key,
    required this.contact,
    required this.showErrorMessages,
  }) : super(key: key);

  @override
  _ContactEditFormState createState() => _ContactEditFormState();
}

class _ContactEditFormState extends State<ContactEditForm> {
  TextEditingController namecontroler = TextEditingController();
  TextEditingController addresscontroler = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    namecontroler.text =
        widget.contact.name.isValid() ? widget.contact.name.getOrCrash() : "";
    addresscontroler.text = widget.contact.address.isValid()
        ? widget.contact.address.getOrCrash()
        : "";
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: widget.showErrorMessages
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 40.h),
        child: Container(
          margin: EdgeInsets.only(top: 0.06.sh),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: 'Nombre'),
                controller: namecontroler,
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
                        invalidValue: (_) => 'No se permite saltos de linea',
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
                children: [
                  SizedBox(
                    width: 0.70.sw,
                    child: TextFormField(
                      controller: addresscontroler,
                      decoration: InputDecoration(hintText: 'Wallet address'),
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
                          codeSanner = await FlutterBarcodeScanner.scanBarcode(
                              "#ff6666", "Cancel", false, ScanMode.DEFAULT);
                        } on PlatformException {
                          codeSanner = 'Failed to get platform version.';
                        }
                        addresscontroler.text = codeSanner;
                        context
                            .read<ContactFormBloc>()
                            .add(ContactFormEvent.addressChanged(codeSanner));
                      },
                      icon: Icon(Icons.qr_code))
                ],
              ),
              SizedBox(
                height: 170.h,
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
                onTap: () => context
                    .read<ContactFormBloc>()
                    .add(ContactFormEvent.isEditing()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
