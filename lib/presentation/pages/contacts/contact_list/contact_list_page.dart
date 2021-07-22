import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../routes/router.gr.dart';
import '../../home/widgets/bottom_navigation_bar.dart';
import 'widgets/add_contacts.dart';
import 'widgets/list_contacts.dart';

class ContactListPage extends StatelessWidget {
  const ContactListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            AddContacts(),
            ListContacts()
          ],
        ),

      ),
      bottomNavigationBar:BottonNavigationBar() ,
      floatingActionButton: FloatingActionButton(onPressed: () => context.router.navigate(ContactCreateRoute()),
          child: const Icon(Icons.add),
          backgroundColor:  Theme.of(context).primaryColor),
    );
  }
}
