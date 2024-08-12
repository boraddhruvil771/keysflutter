import 'package:flutter/material.dart';
import 'package:flutterkeys/PageStorageKeyFile.dart';

import 'GlobalKey.dart';

void main() {
  runApp(GlobalKeyExample());
  // runApp(MyApp());
  // runApp(Valuekey());
  // runApp(Pagestoragekey());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> items = [
    ItemWidget(key: UniqueKey(), color: Colors.red),
    ItemWidget(key: UniqueKey(), color: Colors.green),
    ItemWidget(key: UniqueKey(), color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('UniqueKey Example')),
        body: ReorderableListView(
          children: items,
          onReorder: (oldIndex, newIndex) {
            setState(() {
              final item = items.removeAt(oldIndex);
              items.insert(newIndex, item);
            });
          },
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  final Color color;

  ItemWidget({required Key key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      height: 100,
      color: color,
      child: const Center(
          child: Text('Item', style: TextStyle(color: Colors.white))),
    );
  }
}
