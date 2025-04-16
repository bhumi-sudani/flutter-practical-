#part 1 
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row Example'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Text(
              'RAM',
              style: TextStyle(color: Colors.green, fontSize: 50),
            ),
            Text(
              'SITAA',
              style: TextStyle(color: Colors.indigoAccent, fontSize: 50),
            ),
            Text(
              'BHARAT',
              style: TextStyle(color: Colors.yellowAccent, fontSize: 50),
            ),
          ],
        ),
      ),
    ),
  );
}

#part 2
  import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'RichText Example',
            style: TextStyle(fontSize: 60, backgroundColor: Colors.amber),
          ),
        ),
        body: Center(
          child: RichText(
            text: const TextSpan(
              text: 'My Bonnie',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: Colors.blueAccent,
                fontSize: 50,
              ),
              children: [
                TextSpan(
                  text:
                      'My mother loves to bake cookies. Sarah’s mother is a college professor. I play video games with my mother!',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}



