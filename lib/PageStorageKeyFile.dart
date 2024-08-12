import 'package:flutter/material.dart';

class Pagestoragekey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1')),
      body: ListView.builder(
        key: const PageStorageKey('page1-list'), // Remember scroll position
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(title: Text('Item $index'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Page2()),
          );
        },
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 2')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Back to Page 1'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
