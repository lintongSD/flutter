import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: Text(
              '起风了~',
              style: TextStyle(
                fontSize: 44.0,
              ),
            ),
            width: 500,
            height: 400,
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(10, 50, 30, 20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              //渐变色
              gradient: LinearGradient(
                  colors: [Colors.deepOrange, Colors.blue]
              ),
              border: Border.all(
                width: 5,
                color: Colors.orange
              )
            ),
          ),
        ),
      )
    );
  }
}
