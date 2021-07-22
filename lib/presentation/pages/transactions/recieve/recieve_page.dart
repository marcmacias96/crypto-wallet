import 'package:flutter/material.dart';

import 'widgets/body_recieve.dart';

class RecievePage extends StatelessWidget {
  const RecievePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          BodyRecieve()
        ],
      ),
    );
  }
}
