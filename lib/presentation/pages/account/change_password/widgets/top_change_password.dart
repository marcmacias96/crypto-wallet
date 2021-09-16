import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';

class TopChangePassword extends StatelessWidget {
  const TopChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.25.sh,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).primaryColor,
              Color.fromRGBO(9, 126, 234, 100)
            ]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBar(
            leading: IconButton(
              onPressed: () {
                context.router.pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 25,
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              "Contraseña",
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.sp),
            ),
          ),
        ],
      ),
    );
  }
}
