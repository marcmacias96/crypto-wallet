import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../aplication/contact/contact_list_bloc/contact_list_bloc.dart';
import '../../../../../injection.dart';
import '../../../../routes/router.gr.dart';
import '../../../contacts/contact_list/widgets/list_contacts.dart';
import 'widgets/select_header.dart';

class ContactSelectPage extends StatelessWidget {
  final Function onSelect;
  const ContactSelectPage({Key? key, required this.onSelect}) : super(key: key);

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
          child: BlocBuilder<ContactListBloc, ContactListState>(
            builder: (context, state) {
              return Stack(
                children: [
                  SelectHeader(),
                  ListContacts(
                    onSelect: onSelect,
                    contacts: state.isSearching
                        ? state.contactsFiltered
                        : state.contacts,
                  ),
                ],
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context.router.navigate(ContactCreateRoute()),
          child: const Icon(Icons.add),
          backgroundColor: Theme.of(context).primaryColor),
    );
  }
}
