import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../routes/router.gr.dart';
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TitleContact(title: 'Contactos'),
          IconButton(onPressed: () => context.router.navigate(ContactCreateRoute()), icon: Icon(Icons.add_circle,color: Colors.white,size: 60))

        ],

      ),
    );
  }
}
