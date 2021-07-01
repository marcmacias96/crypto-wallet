import 'package:auto_route/auto_route.dart';
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

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

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
                  accountAlreadyExists: (_) =>
                      "Correo utilizado en otra cuenta",
                  emailAlreadyInUse: (_) => "Email ya en uso",
                  orElse: () => "Error inesperado",
                ),
                context,
                color: Colors.red);
          }, (type) {
            context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
            context.router.pushAndPopUntil(
              SplashRoute(),
              predicate: (e) => true,
            );
          });
        });
        if (state.isSubmitting) {
          Utils.showSnackBar("Cargando..", context, progress: true);
        }
      },
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
                  decoration: InputDecoration(hintText: 'Email'),
                  autocorrect: false,
                  onChanged: (value) => context.read<SignInFormBloc>().add(
                        SignInFormEvent.emailChanged(value),
                      ),
                  style: TextStyle(color: Colors.black),
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
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(hintText: 'Contraseña'),
                  autocorrect: false,
                  onChanged: (value) => context.read<SignInFormBloc>().add(
                        SignInFormEvent.passwordChanged(value),
                      ),
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
                    Text("Si no tienes una cuenta  "),
                    InkWell(
                      onTap: () => context.router.replace(SignUpRoute()),
                      child: Text(
                        "Registrate Ahora",
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
                    text: 'Iniciar Sesión',
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
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
