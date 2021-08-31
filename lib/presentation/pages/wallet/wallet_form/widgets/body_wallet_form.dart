import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../aplication/wallet/wallet_form_bloc/wallet_form_bloc.dart';
import '../../../../../injection.dart';
import '../../../auth/widgets/login_title.dart';
import '../../widgets/wallet_subtitle.dart';
import 'form_wallet_form.dart';

class BodyWalletForm extends StatelessWidget {
  const BodyWalletForm({Key? key}) : super(key: key);

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
          child: BlocProvider(
            create: (context) =>
                getIt<WalletFormBloc>()..add(WalletFormEvent.createWallet()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginTitle(title: 'Terminar Registro'),
                WalletSubtitle(
                    subtitle: 'Ingresando los datos de tu billetera  virtual'),
                FormWalletForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
