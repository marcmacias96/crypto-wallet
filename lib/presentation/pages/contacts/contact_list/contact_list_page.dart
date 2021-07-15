import 'package:crypto_wallet/presentation/pages/contacts/contact_list/widgets/add_contacts.dart';
import 'package:crypto_wallet/presentation/pages/contacts/contact_list/widgets/list_contacts.dart';
import 'package:crypto_wallet/presentation/pages/contacts/contact_list/widgets/title_contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../home/widgets/bottom_navigation_bar.dart';

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

    );
  }
}
