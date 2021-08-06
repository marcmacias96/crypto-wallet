

import 'package:flutter/material.dart';

import 'description_contact.dart';

class ContactItem extends StatelessWidget {
  final String name;
  final String address;
  const ContactItem({Key? key,
    required this.name,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.account_circle,color:Color.fromRGBO(9, 126, 234, 100),size: 40,),
        DescriptionContact(address: address, name: name,),
      ],
    );
  }
}
