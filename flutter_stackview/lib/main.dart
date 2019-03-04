import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
//      alignment: Alignment(0.5, 0.8),
      alignment: FractionalOffset(0.5, 0.8),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage('https://i2.hdslb.com/bfs/face/0cca7e53848ebd079e1b55fde929a473a882ee7f.jpg'),
          radius: 100,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.deepOrange,
          ),
          padding: EdgeInsets.all(5),
          child: Text('我的头像'),
        ),
        Positioned(
          child: Text('头部Text'),
          top: 10,
          left: 20,
        ),
        Positioned(
          child: Text('底部Text'),
          bottom: 10,
          right: 20,
        ),
      ],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('层叠布局'),
        ),
        body: Center(
          child: stack,
        )
      ),
    );
  }
}
