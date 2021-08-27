import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../aplication/auth/auth_bloc.dart';
import '../../routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) => {},
          authenticated: (_) => context.router
              .pushAndRemoveUntil(LayoutRoute(), predicate: (e) => false),
          withOutWallet: (_) => context.router
              .pushAndRemoveUntil(WalletFormRoute(), predicate: (e) => false),
          unauthenticated: (_) => context.router.replace(
            SignInRoute(),
          ),
          modeFailure: (_) {},
        );
      },
      builder: (context, state) {
        return state.maybeMap(
            orElse: () => Container(
                  child: Center(
                      child: Lottie.asset('assets/animations/loading.json',
                          repeat: true, height: 500.h, width: 500.w)),
                ));
      },
    );
  }
}
