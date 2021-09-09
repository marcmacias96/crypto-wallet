import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../aplication/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../../core/utils.dart';
import '../../../../routes/router.gr.dart';
import '../../../auth/widgets/custom_button.dart';

class FormChangePassword extends StatelessWidget {
  const FormChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(() {}, (either) {
          either.fold((failure) {
            Utils.showSnackBar(
                failure.maybeMap(
                  cancelledByUser: (_) => "Acción cancelada",
                  serverError: (_) => "Error en el servidor",
                  invalidEmailAndPasswordCombination: (_) =>
                      "Email o contraseña invalida",
                  orElse: () => "Error inesperado",
                ),
                context,
                color: Colors.red);
          }, (_) {
            context.router.navigate(AccountRoute());
          });
        });
      },
      builder: (context, state) {
        return Form(
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
                ),
                SizedBox(
                  height: 50.h,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Contraseña nueva'),
                  autocorrect: false,
                  obscureText: true,
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 50.h,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Confirmar contraseña'),
                  autocorrect: false,
                  obscureText: true,
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 400.h,
                ),
                CustomButton(
                    text: 'Cambiar Contraseña',
                    textcolor: Colors.white,
                    buttoncolor: Theme.of(context).primaryColor,
                    onTap: () {})
              ],
            ),
          ),
        );
      },
    );
  }
}
