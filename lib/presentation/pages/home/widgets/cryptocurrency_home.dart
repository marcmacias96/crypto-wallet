import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../aplication/coin_list_bloc/coin_list_bloc.dart';
import '../../../core/widgets/loading.dart';
import 'coin_item.dart';

class CryptocurrencyHome extends StatelessWidget {
  const CryptocurrencyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoinListBloc, CoinListState>(builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        loadInProgress: (_) => Center(
          child: LoadingWidget(),
        ),
        loadSuccess: (success) => Container(
          margin: EdgeInsets.only(
            top: 30.h,
            left: 50.w,
            right: 50.w,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Cryptomonedas',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 40.sp),
            ),
            SizedBox(height: 30.h),
            Container(
              height: 0.5.sh,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return CoinItem(
                        image: success.coins[index].id,
                        currecy: success.coins[index].name,
                        value: '${success.coins[index].currentPrice}',
                        price: success.coins[index].priceChange);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: success.coins.size),
            )
          ]),
        ),
        loadFailure: (_) => Center(),
      );
    });
  }
}
