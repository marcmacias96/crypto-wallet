import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../aplication/contact/contact_list_bloc/contact_list_bloc.dart';
import 'contact_item.dart';
import 'text_contact_zero.dart';

class ListContacts extends StatelessWidget {
  const ListContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactListBloc, ContactListState>(
        builder: (context, state) {
          return Container(
              height: 0.745.sh,
              margin: EdgeInsets.only(top: 0.2.sh),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              width: double.infinity,
              child: Container(
                  margin: EdgeInsets.only(
                    left: 10.w,
                    right: 10.w,
                  ),
                  child: Column(children: [
                    if (state.contacts.size > 0)
                      Visibility(
                        child: Container(
                          height: 0.745.sh,
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return ContactItem(
                                name: state.contacts[index].name.getOrCrash(),
                                address:
                                    state.contacts[index].address.getOrCrash(),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 10,
                              );
                            },
                            itemCount: state.contacts.size,
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
        },
        listener: (context, state) {});
  }
}
