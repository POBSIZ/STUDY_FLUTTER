import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/atoms/title.atom.dart';
import '../widgets/molecules/itemList.molecule.dart';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  final textController = TextEditingController();

  List<String> todoList = <String>[];

  void deleteListItem(_item) {
    setState(() {
      todoList.remove(_item);
    });
  }

  List<Widget> genList(List<String> _list) {
    List<Widget> _itemList = <Widget>[];
    for (var item in _list) {
      _itemList.add(
        Container(
          margin: const EdgeInsets.fromLTRB(100, 0, 100, 0),
          child: Row(
            children: [
              Text(
                item,
                style: const TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 40,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        todoList.removeAt(todoList.indexOf(item));
                      }),
                    },
                    child: const Icon(
                      CupertinoIcons.xmark_circle,
                      color: Colors.redAccent,
                      size: 18,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.transparent,
                      ),
                      shadowColor: MaterialStateProperty.all(
                        Colors.transparent,
                      ),
                      elevation: MaterialStateProperty.all(0.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    return _itemList;
  }

  void addListItem() {
    // print(textController.text);
    setState(() {
      todoList.add(textController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: const AppTitle(
                  align: TextAlign.center,
                  text: "TO DO LIST",
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: AppItemList(
                  itemList: genList(todoList),
                ),
              ),
              Container(
                width: 200,
                child: TextField(
                  onEditingComplete: addListItem,
                  controller: textController,
                  decoration: const InputDecoration(
                    hintText: 'Enter task here',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: 100,
                height: 28,
                child: ElevatedButton(
                  onPressed: addListItem,
                  child: const Text('Press Me'),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                      Colors.white,
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.black,
                    ),
                    elevation: MaterialStateProperty.all(0.0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
