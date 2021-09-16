import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../../aplication/transaction_list_bloc/transaction_list_bloc.dart';
import '../../../../../injection.dart';
import '../../../../../utils/user_preference.dart';
import '../../../../core/widgets/loading.dart';
import '../../../contacts/contact_list/widgets/text_contact_zero.dart';
import 'transaction_item.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TransactionListBloc>()
        ..add(TransactionListEvent.fetchTransactions()),
      child: Expanded(
        child: SingleChildScrollView(
          child: Container(
            width: 1.sw,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 50.w,
                    ),
                    child: Text(
                      'Ultimos Movimientos',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.sp),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  BlocBuilder<TransactionListBloc, TransactionListState>(
                      builder: (context, state) {
                    return state.map(
                      initial: (_) => Container(),
                      loadInProgress: (_) => LoadingWidget(),
                      loadSuccess: (success) => Container(
                        constraints: BoxConstraints(
                          maxHeight: 0.42.sh,
                        ),
                        child: success.transactions.size > 0
                            ? ListView.separated(
                                padding: EdgeInsets.only(
                                  bottom: 45.h + ScreenUtil().bottomBarHeight,
                                  left: 50.w,
                                  right: 60.w,
                                ),
                                itemBuilder: (context, index) {
                                  return TransactionItem(
                                    address: success.transactions[index].from ==
                                            UserPreference.getWalletAddress()
                                        ? success.transactions[index].to
                                        : success.transactions[index].from,
                                    sign: success.transactions[index].from ==
                                            UserPreference.getWalletAddress()
                                        ? '-'
                                        : '+',
                                    value: success.transactions[index].value
                                        .toString(),
                                    date: DateFormat.yMMMMd().format(
                                        success.transactions[index].dateTime),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return SizedBox(height: 10.h);
                                },
                                itemCount: success.transactions.size,
                              )
                            : Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.list,
                                      color: Colors.black12,
                                      size: 90,
                                    ),
                                    TextContactZero(
                                        title: 'No tiene movimientos')
                                  ],
                                ),
                              ),
                      ),
                      loadFailure: (_) => Container(
                        color: Colors.red,
                      ),
                    );
                  }),
                ]),
          ),
        ),
      ),
    );
  }
}
