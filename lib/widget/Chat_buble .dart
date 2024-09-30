import 'package:flutter/material.dart';
import 'package:untitled6/model/message.dart';

import '../constans/constants.dart';

class Chat_buble extends StatelessWidget {
  Chat_buble({
    required this.messageT,
    super.key,
  });
  Message messageT;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20))),
        child: Text(
          messageT.message,
        ),
      ),
    );
  }
}
