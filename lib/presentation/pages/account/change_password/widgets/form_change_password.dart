import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../aplication/auth/change_password_form/change_password_form_bloc.dart';
import '../../../../core/utils.dart';
import '../../../../routes/router.gr.dart';
import '../../../auth/widgets/custom_button.dart';

class FormChangePassword extends StatelessWidget {
  const FormChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangePasswordFormBloc, ChangePasswordFormState>(
      listenWhen: (p, c) =>
          p.changeFailureOrSuccessOption != c.changeFailureOrSuccessOption ||
          p.isSubmitting != c.isSubmitting,
      listener: (context, state) {
        state.changeFailureOrSuccessOption.fold(() {}, (either) {
          either.fold((failure) {
            Utils.showSnackBar(
                failure.maybeMap(
                  cancelledByUser: (_) => "Acción cancelada",
                  serverError: (_) => "Error en el servidor",
                  invalidEmailAndPasswordCombination: (_) =>
                      "contraseña invalida",
                  orElse: () => "Error inesperado",
                ),
                context,
                color: Colors.red);
          }, (_) {
            context.router.navigate(AccountRoute());
          });
        });
        if (state.isSubmitting) {
          Utils.showSnackBar("Cargando..", context, progress: true);
        }
      },
      buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 50.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: 'Contraseña actual'),
                  autocorrect: false,
                  obscureText: true,
                  style: TextStyle(color: Colors.black),
                  onChanged: (value) =>
                      context.read<ChangePasswordFormBloc>().add(
                            ChangePasswordFormEvent.passwordChanged(value),
                          ),
                  validator: (_) => context
                      .read<ChangePasswordFormBloc>()
                      .state
                      .password
                      .value
                      .fold(
                          (f) => f.maybeMap(
                                shortPassword: (_) => 'Contraseña incorrecta ',
                                orElse: () => null,
                              ),
                          (_) => null),
                ),
                SizedBox(
                  height: 50.h,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Contraseña nueva'),
                  autocorrect: false,
                  obscureText: true,
                  style: TextStyle(color: Colors.black),
                  onChanged: (value) =>
                      context.read<ChangePasswordFormBloc>().add(
                            ChangePasswordFormEvent.newpasswordChanged(value),
                          ),
                  validator: (_) => context
                      .read<ChangePasswordFormBloc>()
                      .state
                      .newpassword
                      .value
                      .fold(
                          (f) => f.maybeMap(
                                shortPassword: (_) =>
                                    'La contraseña debe tener minimo 6 caracteres',
                                orElse: () => null,
                              ),
                          (_) => null),
                ),
                SizedBox(
                  height: 50.h,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Confirmar contraseña'),
                  autocorrect: false,
                  obscureText: true,
                  style: TextStyle(color: Colors.black),
                  onChanged: (value) => context
                      .read<ChangePasswordFormBloc>()
                      .add(
                        ChangePasswordFormEvent.confirmpasswordChanged(value),
                      ),
                  validator: (_) => context
                      .read<ChangePasswordFormBloc>()
                      .state
                      .confirmpassword
                      .value
                      .fold(
                          (f) => f.maybeMap(
                                shortPassword: (_) =>
                                    'La contraseña debe tener minimo 6 caracteres',
                                orElse: () => null,
                              ),
                          (_) => null),
                ),
                SizedBox(
                  height: 400.h,
                ),
                CustomButton(
                  text: 'Cambiar Contraseña',
                  textcolor: Colors.white,
                  buttoncolor: Theme.of(context).primaryColor,
                  onTap: () => context
                      .read<ChangePasswordFormBloc>()
                      .add(ChangePasswordFormEvent.changePasswordPressed()),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
