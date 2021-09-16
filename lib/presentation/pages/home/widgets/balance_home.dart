import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../aplication/wallet/wallet_watch_bloc/wallet_watch_bloc.dart';

class BalanceHome extends StatelessWidget {
  const BalanceHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletWatchBloc, WalletWatchState>(
        builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        loadInProgress: (_) => Center(
          child: Center(
            child: Container(
              child: Center(
                  child: Lottie.asset('assets/animations/loading_wallet.json',
                      repeat: true, height: 300.h, width: 300.w)),
            ),
          ),
        ),
        loadSuccess: (success) => SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.only(right: 50.w, left: 50.w),
          height: 0.25.sh,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).primaryColor,
                  Color.fromRGBO(9, 126, 234, 100)
                ]),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40.h, left: 40.w),
                child: Text(
                  r"$00.00",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 70.sp),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.h, left: 40.w),
                child: Text(
                  "Balance Total",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 35.sp),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 90.h, right: 40.w),
                alignment: Alignment.centerRight,
                child: Text(
                  success.wallet.name!.getOrCrash(),
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45.sp),
                ),
              ),
            ],
          ),
        )),
        loadFailure: (_) => Center(),
      );
    });
  }
}
