import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../aplication/auth/auth_bloc.dart';
import '../../../../../aplication/wallet/wallet_form_bloc/wallet_form_bloc.dart';
import '../../../../core/utils.dart';
import '../../../../routes/router.gr.dart';
import '../../../auth/widgets/custom_button.dart';

class FormWalletForm extends StatelessWidget {
  const FormWalletForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WalletFormBloc, WalletFormState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(() => {}, (either) {
          either.fold((failure) {
            Utils.showSnackBar(
                failure.maybeMap(
                  insufficientPermissions: (_) => 'No esta logueado',
                  orElse: () => "Error inesperado",
                ),
                context,
                color: Colors.red);
          }, (_) {
            context.read<AuthBloc>().add(AuthEvent.authCheckRequested());
            context.router
                .pushAndPopUntil(SplashRoute(), predicate: (_) => false);
          });
        });
      },
      buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 40.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  autocorrect: false,
                  onChanged: (value) => context
                      .read<WalletFormBloc>()
                      .add(WalletFormEvent.nameChanged(value)),
                  decoration: InputDecoration(hintText: 'Nombre'),
                  style: TextStyle(color: Colors.black),
                  keyboardType: TextInputType.name,
                  validator: (_) => context
                      .read<WalletFormBloc>()
                      .state
                      .wallet
                      .name!
                      .value
                      .fold(
                          (f) => f.maybeMap(
                                multiline: (_) =>
                                    'No se permiten saltos de linea',
                                exceedingLength: (_) =>
                                    'No se permiten más de 20 caracteres',
                                empty: (_) => 'Ingrese un nombre',
                                orElse: () => null,
                              ),
                          (_) => null),
                ),
                Visibility(
                  visible: false,
                  child: TextFormField(
                    autocorrect: false,
                    onChanged: (value) => context
                        .read<WalletFormBloc>()
                        .add(WalletFormEvent.idWalletChanged(value)),
                    decoration: InputDecoration(hintText: 'ID Wallet'),
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
                                  multiline: (_) =>
                                      'No se permiten saltos de linea',
                                  spaces: (_) => 'No se permiten espacios',
                                  exceedingLength: (_) =>
                                      'No se permiten más de 30 caracteres',
                                  empty: (_) => 'Ingrese un ID',
                                  orElse: () => null,
                                ),
                            (_) => null),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                TextFormField(
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) => context
                      .read<WalletFormBloc>()
                      .add(WalletFormEvent.passwordChanged(value)),
                  decoration: InputDecoration(hintText: 'Password'),
                  style: TextStyle(color: Colors.black),
                  keyboardType: TextInputType.text,
                  validator: (_) => context
                      .read<WalletFormBloc>()
                      .state
                      .wallet
                      .password
                      .value
                      .fold(
                          (f) => f.maybeMap(
                                multiline: (_) =>
                                    'No se permiten saltos de linea',
                                shortPassword: (_) =>
                                    'La contraseña debe tener mas de 6 digitos',
                                empty: (_) => 'Ingrese una contraseña',
                                orElse: () => null,
                              ),
                          (_) => null),
                ),
                SizedBox(
                  height: 60.h,
                ),
                CustomButton(
                  text: 'Finalizar',
                  textcolor: Colors.white,
                  buttoncolor: Theme.of(context).primaryColor,
                  onTap: () => context
                      .read<WalletFormBloc>()
                      .add(WalletFormEvent.createWallet()),
                ),
                CustomButton(
                  text: 'Cancelar',
                  textcolor: Colors.black,
                  buttoncolor: Colors.white,
                  onTap: () => context.router.navigate(Welcome1Route()),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
