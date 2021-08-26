import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/contact/contact_form_bloc/contact_form_bloc.dart';
import '../../../../domain/contacts/contact.dart';
import '../../../../injection.dart';
import 'widgets/body_contact_view.dart';

class ContactViewPage extends StatelessWidget {
  final Contact contact;
  const ContactViewPage({
    Key? key,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BlocProvider(
        create: (context) => getIt<ContactFormBloc>()
          ..add(
            ContactFormEvent.initialized(contact),
          ),
        child: SingleChildScrollView(
          child: BodyContactView(),
        ),
      ),
    );
  }
}
