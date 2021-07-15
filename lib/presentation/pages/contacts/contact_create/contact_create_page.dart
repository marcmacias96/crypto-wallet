import 'package:flutter/material.dart';

import '../../auth/widgets/background_start.dart';
import 'widgets/body_contact_create.dart';
class ContactCreatePage extends StatelessWidget {
  const ContactCreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          BackgroundStart(),
          BodyContactCreate()
        ],
      ),
    );
  }
}
