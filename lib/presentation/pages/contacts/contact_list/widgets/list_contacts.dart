import 'package:crypto_wallet/aplication/contact/contact_list_bloc/contact_list_bloc.dart';
import 'package:crypto_wallet/domain/contacts/contact.dart';
import 'package:crypto_wallet/presentation/pages/contacts/contact_list/widgets/contact_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'description_contact.dart';

class ListContacts extends StatelessWidget {
  const ListContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactListBloc, ContactListState>(builder: (context,state){
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
            left: 10.w,
          ),
          child: ListView.separated(
              itemBuilder: (context,index){
                return ContactItem(
                    name: state.contacts[index].name.getOrCrash(),
                    address: state.contacts[index].address,);
              },
              separatorBuilder:(context,index) {
                return SizedBox(height: 10,);
              } ,
              itemCount: state.contacts.size,),
        ),
      );
    } ,
        listener:(context, state) {} );
  }
}
