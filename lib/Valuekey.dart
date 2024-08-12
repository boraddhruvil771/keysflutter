import 'package:flutter/material.dart';

class Valuekey extends StatelessWidget {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3'];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ValueKey Example')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              key: ValueKey(items[index]), // Each item gets a unique ValueKey
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
