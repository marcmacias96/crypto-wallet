import 'package:flutter/material.dart';

import 'widgets/body_send.dart';

class SendPage extends StatelessWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [BodySend()],
      ),
    );
  }
}
