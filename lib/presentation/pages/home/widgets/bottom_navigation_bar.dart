import 'package:flutter/material.dart';

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
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text(
                    "",
                    style: TextStyle(fontSize: 0),
                  ),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance_wallet),
                  title: Text(
                    "",
                    style: TextStyle(fontSize: 0),
                  )
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.contacts),

                  title: Text(
                    "",
                    style: TextStyle(fontSize: 0),
                  )
              ),
            ],
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            iconSize: 30,
          )
      ),
    );
  }
}
