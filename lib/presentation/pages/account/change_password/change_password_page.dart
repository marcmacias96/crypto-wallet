import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../../injection.dart';
import 'widgets/body_change_password.dart';
import 'widgets/top_change_password.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SingleChildScrollView(
          child: Stack(
            children: [TopChangePassword(), BodyChangePassword()],
          ),
        ),
      ),
    );
  }
}
