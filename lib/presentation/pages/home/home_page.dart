import 'package:auto_route/auto_route.dart';
import 'package:crypto_wallet/aplication/coin_list_bloc/coin_list_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../aplication/auth/auth_bloc.dart';
import '../../../aplication/wallet/wallet_watch_bloc/wallet_watch_bloc.dart';
import '../../../injection.dart';
import '../../core/widgets/loading.dart';
import '../../routes/router.gr.dart';
import 'widgets/balance_home.dart';
import 'widgets/bottom_navigation_bar.dart';
import 'widgets/circle_image_home.dart';
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
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: TitleHome(title: 'My Crypto Wallet'),
            elevation: 0.0,
            actions: [
              CircleImageHome(
                  imageSrc: 'assets/img/splash.png',
                  onTap: () {
                    context.read<AuthBloc>().add(AuthEvent.signedOut());
                    context.router.navigate(
                      SplashRoute(),
                    );
                  })
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                  create: (context) => getIt<WalletWatchBloc>()
                    ..add(
                      WalletWatchEvent.watchStarted(),
                    )),
              BlocProvider(
                  create: (context) => getIt<CoinListBloc>()
                    ..add(
                      CoinListEvent.fetchStarted(),
                    ))
            ],
            child: BlocBuilder<WalletWatchBloc, WalletWatchState>(
                builder: (context, state) {
              return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => Center(
                  child: LoadingWidget(),
                ),
                loadSuccess: (success) => SingleChildScrollView(
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      BalanceHome(
                        wallet: success.wallet,
                      ),
                      CryptocurrencyHome()
                    ],
                  ),
                ),
                loadFailure: (_) => Center(),
              );
            }),
          ),
        ),
        bottomNavigationBar: BottonNavigationBar());
  }
}
