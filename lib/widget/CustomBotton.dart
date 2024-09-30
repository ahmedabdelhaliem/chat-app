import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  CustomBotton({
    this.onTap,
    required this.text,
    super.key,
  });
  String text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
