import 'package:auto_route/auto_route.dart';
import 'package:crypto_wallet/domain/auth/i_auth_facade.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../aplication/auth/auth_bloc.dart';
import '../../../../../aplication/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../../core/utils.dart';
import '../../../../routes/router.gr.dart';
import '../../widgets/circle_image_buttom.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/divider_line.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listenWhen: (p, c) =>
          p.authFailureOrSuccessOption != c.authFailureOrSuccessOption ||
          p.isSubmitting != c.isSubmitting,
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(() {}, (either) {
          either.fold((failure) {
            Utils.showSnackBar(
                failure.maybeMap(
                  cancelledByUser: (_) => "Acción cancelada",
                  serverError: (_) => "Error en el servidor",
                  invalidEmailAndPasswordCombination: (_) =>
                      "Email o contraseña invalida",
                  emailAlreadyInUse: (_) => "Email ya en uso",
                  accountAlreadyExists: (_) =>
                      "Correo utilizado en otra cuenta",
                  orElse: () => "Error inesperado",
                ),
                context,
                color: Colors.red);
          }, (type) {
            switch (type) {
              case AccountType.fresh:
                context.router.pushAndPopUntil(
                  WalletFormRoute(),
                  predicate: (e) => true,
                );
                break;
              case AccountType.old:
                context
                    .read<AuthBloc>()
                    .add(const AuthEvent.authCheckRequested());
                context.router.pushAndPopUntil(
                  SplashRoute(),
                  predicate: (e) => true,
                );
                break;
            }
            ScaffoldMessenger.of(context).clearSnackBars();
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
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                  style: TextStyle(color: Colors.black),
                  onChanged: (value) => context.read<SignInFormBloc>().add(
                        SignInFormEvent.emailChanged(value),
                      ),
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  validator: (_) => context
                      .read<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                          (f) => f.maybeMap(
                                invalidEmail: (_) => 'Email invalido',
                                orElse: () => null,
                              ),
                          (_) => null),
                ),
                SizedBox(
                  height: 50.h,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Contraseña'),
                  style: TextStyle(color: Colors.black),
                  onChanged: (value) => context.read<SignInFormBloc>().add(
                        SignInFormEvent.passwordChanged(value),
                      ),
                  obscureText: true,
                  autocorrect: false,
                  validator: (_) =>
                      context.read<SignInFormBloc>().state.password.value.fold(
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
                Row(
                  children: [
                    Text("Ya tienes una cuenta  "),
                    InkWell(
                      onTap: () => context.router.replace(SignInRoute()),
                      child: Text(
                        "Inicia sesión Ahora",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomButton(
                    text: 'Regístrarte ahora',
                    textcolor: Colors.white,
                    buttoncolor: Theme.of(context).primaryColor,
                    onTap: () => context.read<SignInFormBloc>().add(
                        SignInFormEvent.registerWithEmailAndPasswordPressed())),
                DividerLine(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleImageButton(
                        imageSrc: 'assets/img/facebook.png',
                        onTap: () => context
                            .read<SignInFormBloc>()
                            .add(SignInFormEvent.signInWithFacebookPressed())),
                    CircleImageButton(
                        imageSrc: 'assets/img/google.png',
                        onTap: () => context
                            .read<SignInFormBloc>()
                            .add(SignInFormEvent.signInWithGooglePressed()))
                  ],
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
