import 'package:flutter/material.dart';

class GlobalKeyExample extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(title: const Text('GlobalKey Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Use ScaffoldMessenger to show a SnackBar
              ScaffoldMessenger.of(_scaffoldKey.currentContext!).showSnackBar(
                const SnackBar(content: Text('Hello from SnackBar')),
              );
            },
            child: const Text('Show SnackBar'),
          ),
        ),
      ),
    );
  }
}
