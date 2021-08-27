import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'title_contact.dart';

class ContactListHeader extends StatelessWidget {
  const ContactListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.20.sh,
      padding: EdgeInsets.only(
        right: 250.w,
        left: 20.w,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).primaryColor,
              Color.fromRGBO(9, 126, 234, 100)
            ]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () => context.router.pop(),
              icon: Icon(
                Icons.close,
                color: Colors.white,
              )),
          TitleContact(title: 'Contactos'),
        ],
      ),
    );
  }
}
