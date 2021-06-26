import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../aplication/auth/auth_bloc.dart';
import '../../routes/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
     appBar: AppBar(
       automaticallyImplyLeading: false,
       backgroundColor: Theme.of(context).primaryColor,
       title: Text('Crypto Wallet'),
       actions: [
         IconButton(
           onPressed: () {
             context.read<AuthBloc>().add(AuthEvent.signedOut());
             context.router
                 .navigate(
               SplashRoute(),
             );


           },
           icon: Icon(Icons.logout)
         )
       ],
     ),

    );
  }
}
