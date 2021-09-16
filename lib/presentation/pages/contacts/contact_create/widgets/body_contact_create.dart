import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../auth/widgets/login_title.dart';
import '../../../wallet/widgets/wallet_subtitle.dart';
import 'contact_create_form.dart';

class BodyContactCreate extends StatelessWidget {
  const BodyContactCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 0.29.sh),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginTitle(title: 'Crear Contacto'),
              WalletSubtitle(
                  subtitle:
                      'Agregar un nuevo contacto a tu lista de contactos'),
              ContactCreateForm()
            ],
          ),
        ),
      ),
    );
  }
}
