import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('水平方向布局'),
        ),
        body: Row(
          children: <Widget>[
            //撑满屏幕Expanded
            Expanded(child: RaisedButton(
              onPressed: (){},
              color: Colors.deepOrange,
              child: Text('deepOrangeBtn'),
            ),),
            Expanded(child: RaisedButton(
              onPressed: (){},
              color: Colors.deepPurple,
              child: Text('deepPurpleBtn'),
            ),),
          ],
        ),
      ),
    );
  }
}