import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'description_contact.dart';

class ContactItem extends StatelessWidget {
  final String name;
  final String address;
  const ContactItem({
    Key? key,
    required this.name,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.account_circle,
            color: Color.fromRGBO(9, 126, 234, 100),
            size: 45,
          ),
          SizedBox(
            width: 50.w,
          ),
          DescriptionContact(
            address: address,
            name: name,
          ),
        ],
      ),
    );
  }
}
