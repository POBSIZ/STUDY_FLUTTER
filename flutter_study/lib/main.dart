import 'package:flutter/material.dart';

import './layout/layout.dart';
import './pages/home.page.dart';

void main() => runApp(const Study());

class Study extends StatelessWidget {
  const Study({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "STUDY",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppLayout(
        bodyChild: AppHome(),
      ),
    );
  }
}
