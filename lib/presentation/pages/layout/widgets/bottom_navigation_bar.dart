import 'package:flutter/material.dart';

class BottonNavigationBar extends StatelessWidget {
  final Function onTap;
  const BottonNavigationBar({Key? key, required this.onTap}) : super(key: key);

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
          child: BottomAppBar(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.home),
                      iconSize: 30,
                      onPressed: () => onTap(0)),
                  IconButton(
                      icon: Icon(Icons.account_balance_wallet),
                      iconSize: 30,
                      onPressed: () => onTap(1)),
                  IconButton(
                      icon: Icon(Icons.person),
                      iconSize: 30,
                      onPressed: () => onTap(2)),
                ]),
          )),
    );
  }
}
