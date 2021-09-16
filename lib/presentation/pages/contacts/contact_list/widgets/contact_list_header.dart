import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'title_contact.dart';

class ContactListHeader extends StatelessWidget {
  const ContactListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.30.sh,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
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
            width: 600.w,
            margin: EdgeInsets.only(top: 0.02.sh, left: 0.045.sh),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
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
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Buscar contacto", border: InputBorder.none),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
