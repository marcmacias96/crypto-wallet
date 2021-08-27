import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/balance_home.dart';
import 'widgets/cryptocurrency_home.dart';
import 'widgets/title_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
          title: TitleHome(title: 'My Crypto Wallet'),
          elevation: 0.0,
        ),
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BalanceHome(),
              CryptocurrencyHome(),
            ],
          ),
        ),
      ),
    );
  }
}
