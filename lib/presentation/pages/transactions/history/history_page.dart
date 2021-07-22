import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../aplication/auth/auth_bloc.dart';
import '../../../routes/router.gr.dart';
import '../../home/widgets/balance_home.dart';
import '../../home/widgets/bottom_navigation_bar.dart';
import '../../home/widgets/circle_image_home.dart';
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
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: TitleHome(title: 'My Crypto Wallet'),
          elevation: 0.0,
          actions: [
            CircleImageHome(imageSrc: 'assets/img/splash.png', onTap:() {
              context.read<AuthBloc>().add(AuthEvent.signedOut());
              context.router
                  .navigate(
                SplashRoute(), );
            } )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack (
          alignment: Alignment.topLeft,
          children: [
            BalanceHome(),
            ActionsTransactions(),
            HistoryList()
          ],

        ),
      ),
      bottomNavigationBar: BottonNavigationBar()
    );
  }
}
