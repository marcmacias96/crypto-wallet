import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/contact/contact_list_bloc/contact_list_bloc.dart';
import '../../../../injection.dart';
import '../../../routes/router.gr.dart';
import '../../transactions/send/select/widgets/select_header.dart';
import 'widgets/list_contacts.dart';

class ContactListPage extends StatelessWidget {
  const ContactListPage({Key? key}) : super(key: key);

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
                    onSelect: (contact) => context.router.navigate(
                      ContactViewRoute(contact: contact),
                    ),
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
