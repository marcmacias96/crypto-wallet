import 'package:crypto_wallet/presentation/pages/contacts/contact_list/widgets/description_contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListContacts extends StatelessWidget {
  const ListContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      margin: EdgeInsets.only(
        top: 0.30.sh,
      ),
      child: Container(
        margin:EdgeInsets.only(
        top: 0.03.sh,
        left: 50.w,
        ),
        child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.account_circle,color:Color.fromRGBO(9, 126, 234, 100),size: 60,),
                  SizedBox(width: 50.w),
                  DescriptionContact(address: '12993333333', name: 'MARCO MACIAS',),
                ],
              ),

            ]
        ),
      ),
    );
  }
}
