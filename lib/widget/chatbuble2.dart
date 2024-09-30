import 'package:flutter/material.dart';

import '../model/message.dart';

class Chat_bubleForFriend extends StatelessWidget {
  const Chat_bubleForFriend({
    required this.messageT,
    super.key,
  });
  final Message messageT;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20))),
        child: Text(
          messageT.message,
        ),
      ),
    );
  }
}
