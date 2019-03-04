import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("我是第一个元素"),
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("我是第一个元素"),
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("我是第一个元素"),
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("我是第一个元素"),
              )
            ],
          )
        )
      )
    );
  }
}