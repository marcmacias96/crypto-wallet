import 'package:crypto_wallet/domain/contacts/contact.dart';
import 'package:crypto_wallet/presentation/pages/auth/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../../aplication/contact/contact_form_bloc/contact_form_bloc.dart';

class TopContactView extends StatelessWidget {
  final bool isEditing;
  final Contact contact;
  const TopContactView(
      {Key? key, required this.isEditing, required this.contact})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.35.sh,
      width: 3.sw,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).primaryColor,
              Color.fromRGBO(9, 126, 234, 100)
            ]),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            isEditing
                ? Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ])
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        IconButton(
                          onPressed: () => context.read<ContactFormBloc>().add(
                                ContactFormEvent.isEditing(),
                              ),
                          icon: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        IconButton(
                          onPressed: () => showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (ctx) {
                              return DeleteDialog(
                                onAcept: () => {
                                  context
                                      .read<ContactFormBloc>()
                                      .add(ContactFormEvent.delete(contact)),
                                  context.router.pop(),
                                },
                                onCancel: () => context.router.pop(),
                              );
                            },
                          ),
                          icon: Icon(
                            Icons.delete,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ]),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 150,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DeleteDialog extends StatelessWidget {
  final VoidCallback onAcept, onCancel;
  const DeleteDialog({
    Key? key,
    required this.onAcept,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 50.h,
      ),
      height: 0.31.sh,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            '¿Estas seguro de eliminar?',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Colors.black, fontSize: 45.sp),
          ),
          SizedBox(
            height: 70.h,
          ),
          CustomButton(
            text: 'Eliminar',
            textcolor: Colors.white,
            buttoncolor: Colors.red,
            onTap: onAcept,
          ),
          CustomButton(
            text: 'Cancelar',
            textcolor: Colors.black,
            buttoncolor: Colors.white,
            onTap: onCancel,
          )
        ],
      ),
    );
  }
}
