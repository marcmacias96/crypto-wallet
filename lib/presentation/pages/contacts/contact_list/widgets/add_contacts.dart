import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'title_contact.dart';

class AddContacts extends StatelessWidget {
  const AddContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.35.sh,
      //width: 3.sw,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).primaryColor,
              Color.fromRGBO(9, 126, 234, 100)]),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleContact(title: 'Contactos'),
        ],
      ),
    );
  }
}
