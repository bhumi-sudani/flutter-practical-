import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tiny GridView',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 6, // More columns = smaller boxes
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
            childAspectRatio: 1, // Keep it square
            children: List.generate(18, (index) {
              return Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.lightBlue.shade100,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    '¡˘×',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
