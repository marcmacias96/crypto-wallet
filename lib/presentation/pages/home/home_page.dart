import 'package:crypto_wallet/aplication/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
     appBar: AppBar(
       backgroundColor: Theme.of(context).primaryColor,
       title: Text('Crypto Wallet'),
       actions: [
         IconButton(
           onPressed: () => context.read<AuthBloc>().add(
             AuthEvent.signedOut()
           ),
           icon: Icon(Icons.logout)
         )
       ],
     ),

    );
  }
}
