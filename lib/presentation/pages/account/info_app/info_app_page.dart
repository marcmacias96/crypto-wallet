import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoAppPage extends StatelessWidget {
  const InfoAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(29, 35, 157, 100),
              Color.fromRGBO(99, 127, 235, 100)
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 80.h, left: 80.w, right: 80.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.router.pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "My",
                            style:
                                Theme.of(context).textTheme.headline2!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Image.asset('assets/img/splash.png',
                              width: 120.0, height: 120.0)
                        ],
                      ),
                      Text(
                        "CryptoWallet",
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 70.sp,
                            ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        'Tu billetera bitcon personal',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 40.sp),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 500.h,
                    width: 550.w,
                    margin: EdgeInsets.only(top: 80.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.white,
                            Color.fromRGBO(189, 189, 189, 100)
                          ]),
                    ),
                    child: Stack(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: 40.h, left: 40.w, right: 60.w),
                          child: Text(
                            'Almacena y trasfiere bitcoin fácil y rápido',
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 60.sp),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset('assets/img/wallet.png',
                              width: 200.0, height: 200.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80.h, left: 50.w, right: 50.w),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Text(
                        '¿Cómo lo puedo hacer?',
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 70.sp,
                            ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          'assets/img/doodle.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 80.h, left: 50.w, right: 50.w),
                    child: Image.asset(
                      'assets/img/transactions.png',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 150.h, left: 50.w, right: 50.w),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        '¿Cómo puedo enviar bitcoin?',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 70.sp,
                            ),
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/img/enviar.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 150.h, left: 50.w, right: 50.w),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        '¿Cómo puedo recibir bitcoin?',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 70.sp,
                            ),
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/img/recibir.png',
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
