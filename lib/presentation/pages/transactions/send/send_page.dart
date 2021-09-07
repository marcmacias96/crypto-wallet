import 'package:crypto_wallet/aplication/transaction_form_bloc/transaction_form_bloc.dart';
import 'package:crypto_wallet/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/body_send.dart';

class SendPage extends StatelessWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<TransactionFormBloc>(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [BodySend()],
        ),
      ),
    );
  }
}
