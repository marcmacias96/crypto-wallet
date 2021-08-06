import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/contact/contact_form_bloc/contact_form_bloc.dart';
import '../../../../injection.dart';
import '../../auth/widgets/background_start.dart';
import 'widgets/body_contact_create.dart';
class ContactCreatePage extends StatelessWidget {
  const ContactCreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BlocProvider(
        create: (context) => getIt<ContactFormBloc>(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            BackgroundStart(),
            BodyContactCreate()
          ],
        ),
      ),
    );
  }
}
