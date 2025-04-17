import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Practical3'),
        ),
        body: Container(
          width: 800.0,
          height: 500.0,
          margin: EdgeInsets.all(15.0),
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: Colors.yellow, // Background color of the container
            border: Border.all(
              color: Colors.greenAccent, // Border color
              width: 10.0, // Border width
            ),
            // You can add rounded corners if needed:
            // borderRadius: BorderRadius.circular(10.0),
          ),
          alignment: Alignment.center,
          child: Text(
            'BHUMI SUDANI',
            style: TextStyle(
              color: Colors.pink,
              fontSize: 45,
            ),
          ),
        ),
      ),
    ),
  );
}
