import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  final String text;
  final align;

  const AppTitle({Key? key, this.align, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 32.0,
        fontWeight: FontWeight.w900,
        decoration: TextDecoration.none,
      ),
      textAlign: this.align,
    );
  }
}
