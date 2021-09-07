import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../../../aplication/contact/contact_list_bloc/contact_list_bloc.dart';
import '../../../../contacts/contact_list/widgets/contact_item.dart';
import '../../../../contacts/contact_list/widgets/text_contact_zero.dart';
import 'select_header.dart';

class SelectList extends StatelessWidget {
  final Function onSelect;
  const SelectList({Key? key, required this.onSelect}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactListBloc, ContactListState>(
        builder: (context, state) {
          return Stack(children: [
            SelectHeader(),
            Container(
                margin: EdgeInsets.only(top: 0.32.sh),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                width: double.infinity,
                child: Container(
                    child: Column(children: [
                  if (state.contacts.size > 0)
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
                              name: state.contacts[index].name.getOrCrash(),
                              address:
                                  state.contacts[index].address.getOrCrash(),
                              onTap: () => onSelect(state.contacts[index]),
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
                ]))),
          ]);
        },
        listener: (context, state) {});
  }
}
