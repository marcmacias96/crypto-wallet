import 'package:crypto_wallet/aplication/wallet/wallet_form_bloc/wallet_form_bloc.dart';
import 'package:crypto_wallet/injection.dart';
import 'package:crypto_wallet/presentation/pages/wallet/wallet_form/widgets/form_wallet_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../auth/widgets/login_title.dart';
import '../../widgets/wallet_subtitle.dart';

class BodyWalletForm extends StatelessWidget {
  const BodyWalletForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 1.sw ,
        margin: EdgeInsets.only(
            top: 0.35.sh
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => getIt<WalletFormBloc>(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginTitle(title: 'Terminar Registro'),
                WalletSubtitle(subtitle: 'Ingresando los datos de tu billetera  virtual'),
                FormWalletForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
