import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../aplication/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../../injection.dart';
import '../widgets/background_start.dart';
import 'widgets/body_signup.dart';



class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            BackgroundStart(),
            BodySignUp()
          ],
        ),
      ),
    );
  }
}
