import 'package:flutter/material.dart';

class AppItemList extends StatelessWidget {
  final List<Widget> itemList;

  const AppItemList({Key? key, required this.itemList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: this.itemList,
    );
  }
}
