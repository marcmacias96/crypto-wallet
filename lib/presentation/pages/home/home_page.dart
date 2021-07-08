import 'package:auto_route/auto_route.dart';
import 'package:crypto_wallet/presentation/pages/auth/widgets/circle_image_buttom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../aplication/auth/auth_bloc.dart';
import '../../routes/router.gr.dart';
import 'widgets/title_home.dart';
import 'widgets/circle_image_home.dart';
import 'widgets/balance_home.dart';
import 'widgets/image_table.dart';
import 'widgets/description_table.dart';
import 'widgets/value_table.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
            Container(
              margin: EdgeInsets.only(
                  top: 0.30.sh,
                  left: 50.w,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Cryptomonedas',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 40.sp
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      children: [
                        ImageTable(imageSrc: "assets/img/bitcoin.png"),
                        SizedBox(width: 50.w),
                        DescriptionTable(currency: 'Bitcoin', value: '35,00'),
                        SizedBox(width: 250.w),
                        ValueTable(value: '5,3', signo: '+', valuecolor: Colors.green),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      children: [
                        ImageTable(imageSrc: "assets/img/ethereum.png"),
                        SizedBox(width: 50.w),
                        DescriptionTable(currency: 'Etheriu', value: '35,00'),
                        SizedBox(width: 250.w),
                        ValueTable(value: '2,2', signo: '-', valuecolor: Colors.red),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      children: [
                        ImageTable(imageSrc: "assets/img/bitcoin.png"),
                        SizedBox(width: 50.w),
                        DescriptionTable(currency: 'Bitcoin', value: '35,00'),
                        SizedBox(width: 250.w),
                        ValueTable(value: '5,3', signo: '+', valuecolor: Colors.green),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      children: [
                        ImageTable(imageSrc: "assets/img/bitcoin.png"),
                        SizedBox(width: 50.w),
                        DescriptionTable(currency: 'Bitcoin', value: '35,00'),
                        SizedBox(width: 250.w),
                        ValueTable(value: '5,3', signo: '+', valuecolor: Colors.green),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      children: [
                        ImageTable(imageSrc: "assets/img/bitcoin.png"),
                        SizedBox(width: 50.w),
                        DescriptionTable(currency: 'Bitcoin', value: '35,00'),
                        SizedBox(width: 250.w),
                        ValueTable(value: '5,3', signo: '+', valuecolor: Colors.green),
                      ],
                    )
                  ]
              ),
            )
          ],

        ),
      ),
      bottomNavigationBar: Container(
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
                      )
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
        )
    );
  }
}
