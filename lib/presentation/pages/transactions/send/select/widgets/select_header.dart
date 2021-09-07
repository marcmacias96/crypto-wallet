import 'package:auto_route/auto_route.dart';
import 'package:crypto_wallet/aplication/contact/contact_form_bloc/contact_form_bloc.dart';
import 'package:crypto_wallet/aplication/contact/contact_list_bloc/contact_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectHeader extends StatelessWidget {
  const SelectHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.35.sh,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).primaryColor,
              Color.fromRGBO(9, 126, 234, 100)
            ]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBar(
            leading: IconButton(
              onPressed: () {
                context.router.pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 25,
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              "Contactos",
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.sp),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 120.h,
              ),
              Text(
                "Escoge o busca un contacto",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 30.sp),
              ),
              Container(
                height: 80.h,
                margin: EdgeInsets.only(
                  top: 0.02.sh,
                  left: 0.045.sh,
                  right: 0.045.sh,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.h,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            counterText: '',
                            hintText: "Buscar contacto",
                            border: InputBorder.none),
                        style: TextStyle(color: Colors.black),
                        maxLength: 20,
                        onChanged: (value) => context
                            .read<ContactListBloc>()
                            .add(ContactListEvent.searchChange(value)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
