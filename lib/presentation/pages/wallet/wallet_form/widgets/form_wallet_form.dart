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
                .pushAndRemoveUntil(SplashRoute(), predicate: (_) => false);
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
                SizedBox(
                  height: 60.h,
                ),
                CustomButton(
                  text: 'Finalizar',
                  textcolor: Colors.white,
                  buttoncolor: Theme.of(context).primaryColor,
                  onTap: () => context
                      .read<WalletFormBloc>()
                      .add(WalletFormEvent.createAddress()),
                ),
                CustomButton(
                  text: 'Cancelar',
                  textcolor: Colors.black,
                  buttoncolor: Colors.white,
                  onTap: () => context.router.pop(),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
