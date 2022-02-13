import 'package:flutter/material.dart';

class AppInputText extends StatelessWidget {
  final String argsLabelText;
  final textController = TextEditingController();
  AppInputText({Key? key, required this.argsLabelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: this.argsLabelText,
      ),
    );
  }
}
