import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kt_dart/collection.dart';

import '../../../../../domain/contacts/contact.dart';
import 'contact_item.dart';
import 'text_contact_zero.dart';

class ListContacts extends StatelessWidget {
  final Function onSelect;
  final KtList<Contact> contacts;
  const ListContacts({
    Key? key,
    required this.contacts,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 0.32.sh),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        width: double.infinity,
        child: Container(
            child: Column(children: [
          if (contacts.size > 0)
            Visibility(
              child: Container(
                height: 0.85.sh,
                child: ListView.separated(
                  padding: EdgeInsets.only(
                    bottom: ScreenUtil().bottomBarHeight + 10.h,
                    top: 20.h,
                    left: 10.w,
                    right: 10.w,
                  ),
                  itemBuilder: (context2, index) {
                    return ContactItem(
                      name: contacts[index].name.getOrCrash(),
                      address: contacts[index].address.getOrCrash(),
                      onTap: () => onSelect(contacts[index]),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: contacts.size,
                ),
              ),
            )
          else
            Container(
              margin: EdgeInsets.only(
                top: 0.20.sh,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.contacts,
                    color: Colors.black12,
                    size: 90,
                  ),
                  TextContactZero(title: 'No tiene contactos')
                ],
              ),
            ),
        ])));
  }
}
