import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../routes/router.gr.dart';
import '../../home/widgets/balance_home.dart';
import '../../home/widgets/title_home.dart';
import 'widgets/actions_transactions.dart';
import 'widgets/history_list.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.10.sh), // here the desired height
        child: AppBar(
          centerTitle: false,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: TitleHome(title: 'Transacciones'),
          elevation: 0.0,
          actions: [
            Container(
              margin: EdgeInsets.only(
                right: 50.w,
                top: 30.h,
              ),
              child: IconButton(
                onPressed: () => context.router.navigate(
                  ContactListRoute(),
                ),
                icon: Icon(
                  Icons.contacts,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          BalanceHome(),
          ActionsTransactions(),
          HistoryList(),
        ],
      ),
    );
  }
}
