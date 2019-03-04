import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: Image.network(
              'http://jspang.com/static/myimg/blogtouxiang.jpg',
              fit: BoxFit.contain,
              color: Colors.deepOrangeAccent,
              colorBlendMode: BlendMode.color,
            ),
            width: 200,
            height: 400,
          ),
        ),
      ),
    );
  }
}

