import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../aplication/contact/contact_list_bloc/contact_list_bloc.dart';
import '../../../../../injection.dart';
import 'widgets/select_list.dart';

class ContactSelectPage extends StatelessWidget {
  const ContactSelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BlocProvider(
        create: (context) => getIt<ContactListBloc>()
          ..add(
            ContactListEvent.watchStarted(),
          ),
        child: SingleChildScrollView(
          child: SelectList(),
        ),
      ),
    );
  }
}
