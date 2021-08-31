import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/layout/layout_cubit.dart';
import '../../../aplication/wallet/wallet_watch_bloc/wallet_watch_bloc.dart';
import '../../../injection.dart';
import '../contacts/contact_list/contact_list_page.dart';
import '../home/home_page.dart';
import '../transactions/history/history_page.dart';
import 'widgets/bottom_navigation_bar.dart';

class LayoutPage extends StatelessWidget {
  static const List<StatelessWidget> list = [
    HomePage(),
    HistoryPage(),
    ContactListPage(),
  ];
  const LayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<LayoutCubit>(),
        ),
        BlocProvider(
            create: (context) => getIt<WalletWatchBloc>()
              ..add(
                WalletWatchEvent.watchStarted(),
              )),
      ],
      child: BlocBuilder<LayoutCubit, LayoutState>(builder: (context, state) {
        return Scaffold(
          body: PageView(
            controller: state.controller,
            children: list,
          ),
          bottomNavigationBar: BottonNavigationBar(
            onTap: (index) {
              context.read<LayoutCubit>().changePosition(index);
            },
          ),
        );
      }),
    );
  }
}
