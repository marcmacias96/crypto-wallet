import 'package:crypto_wallet/aplication/wallet/wallet_form_bloc/wallet_form_bloc.dart';
import 'package:crypto_wallet/presentation/pages/auth/widgets/custom_button.dart';
import 'package:crypto_wallet/presentation/pages/wallet/widgets/button_welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class FormWalletForm extends StatelessWidget {
  const FormWalletForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WalletFormBloc,WalletFormState>(
        listener: (context,state){

        },
      buildWhen:(p,c) => p.showErrorMessages != c.showErrorMessages ,
      builder: (context,state){
          return Form(
            child: Padding(
              padding:  EdgeInsets.symmetric(
                  horizontal: 60.w,
                  vertical: 40.h
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(

                    decoration: InputDecoration(
                        hintText: 'Nombre'
                    ),
                    style: TextStyle(color: Colors.black),

                  ),
                  SizedBox(height: 50.h,),
                  TextFormField(
                    autocorrect: false,
                    onChanged:(value)=> context.read<WalletFormBloc>().add(
                        WalletFormEvent.idWalletChanged(value)
                    ) ,
                    decoration: InputDecoration(
                        hintText: 'ID Wallet'
                    ),
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.text,
                    validator: (_) => context
                        .read<WalletFormBloc>()
                        .state
                        .wallet
                        .walletId
                        .value
                        .fold(
                            (f) => f.maybeMap(
                              multiline:(_) => 'No se permiten saltos de linea' ,
                          spaces: (_) => 'No se permiten espacios'  ,
                          exceedingLength: (_) => 'No se permiten más de 30 caracteres' ,
                          orElse: () => null,
                        ),
                            (_) => null),
                  ),
                  SizedBox(height: 60.h,),
                  CustomButton(
                    text: 'Finalizar',
                    textcolor: Colors.white,
                    buttoncolor: Theme.of(context).primaryColor,
                    onTap: ()=> context.read<WalletFormBloc>().add(WalletFormEvent.saved()) ,

                  ),

                  CustomButton(
                    text: 'Cancelar',
                    textcolor: Colors.black,
                    buttoncolor: Colors.white,
                    onTap: ()=> context.router.navigate(Welcome1Route()),
                  )
                ],
              ),

            ),

          );
      },
    );
  }
}
