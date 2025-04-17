import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Languages List',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Programming Languages'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.code),
              title: Text('C'),
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('C++'),
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('Java'),
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('Python'),
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('JavaScript'),
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('Dart'),
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('Kotlin'),
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('Swift'),
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('PHP'),
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('Go'),
            ),
          ],
        ),
      ),
    );
  }
}
