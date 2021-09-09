import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../aplication/auth/auth_bloc.dart';
import '../../../../aplication/wallet/wallet_watch_bloc/wallet_watch_bloc.dart';
import '../../../../utils/user_preference.dart';
import '../../../routes/router.gr.dart';
import 'top_account_page.dart';

class BodyAccountPage extends StatelessWidget {
  const BodyAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var walletID = UserPreference.getUserId();
    return BlocBuilder<WalletWatchBloc, WalletWatchState>(
        builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        loadInProgress: (_) => Center(
          child: Container(),
        ),
        loadSuccess: (success) => Stack(
          children: [
            TopAccountPage(name: success.wallet.name!.getOrCrash()),
            Container(
              height: 0.60.sh,
              margin: EdgeInsets.only(
                top: 0.32.sh,
                right: 0.5.w,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15.h,
                        horizontal: 35.w,
                      ),
                      margin:
                          EdgeInsets.only(left: 50.w, right: 50.w, top: 50.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[50],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Wallet ID',
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            walletID,
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35.sp,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15.h,
                        horizontal: 35.w,
                      ),
                      margin:
                          EdgeInsets.only(left: 50.w, right: 50.w, top: 50.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[50],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.info,
                                  size: 60.sp,
                                ),
                                SizedBox(
                                  width: 40.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Información',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      'Acerca de la aplicación',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ],
                                ),
                                Spacer(
                                  flex: 3,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 40.sp,
                                )
                              ],
                            ),
                            onTap: () =>
                                context.router.navigate(InfoAppRoute()),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.lock,
                                  size: 60.sp,
                                ),
                                SizedBox(
                                  width: 40.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cambiar Contraseña',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      'Actualizar contraseña',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ],
                                ),
                                Spacer(
                                  flex: 3,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 40.sp,
                                )
                              ],
                            ),
                            onTap: () =>
                                context.router.navigate(ChangePasswordRoute()),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.exit_to_app,
                                  size: 60.sp,
                                ),
                                SizedBox(
                                  width: 40.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cerrar sesión',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      'Salir de la aplicación',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ],
                                ),
                                Spacer(
                                  flex: 3,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 40.sp,
                                )
                              ],
                            ),
                            onTap: () {
                              context
                                  .read<AuthBloc>()
                                  .add(AuthEvent.signedOut());
                              context.router.navigate(SplashRoute());
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        loadFailure: (_) => Center(),
      );
    });
  }
}
