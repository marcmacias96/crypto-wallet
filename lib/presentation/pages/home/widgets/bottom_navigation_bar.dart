import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../../routes/router.gr.dart';

class BottonNavigationBar extends StatelessWidget {
  const BottonNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child:BottomAppBar(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton( icon: Icon(Icons.home),iconSize: 30, onPressed:()=> context.router.navigate(HomeRoute())),
                  IconButton( icon: Icon(Icons.account_balance_wallet),iconSize: 30, onPressed:()=> context.router.navigate(HistoryRoute())),
                  IconButton( icon: Icon(Icons.contacts),iconSize: 30, onPressed:()=> context.router.navigate(ContactListRoute())),
                ]
            ),

          )
      ),
    );
  }
}
