import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  final Widget bodyChild;

  const AppLayout({Key? key, required this.bodyChild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Study"),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: this.bodyChild,
    );
  }
}
