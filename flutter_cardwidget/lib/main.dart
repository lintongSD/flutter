import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('我是个title1', style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text('我是子title1'),
            leading: Icon(Icons.image),
          ),
          Divider(),
          ListTile(
            title: Text('我是个title2', style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text('我是子title2'),
            leading: Icon(Icons.image),
          ),
          Divider(),
          ListTile(
            title: Text('我是个title3', style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text('我是子title3'),
            leading: Icon(Icons.image),
          ),
          Divider(),
        ],
      ),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('卡片式布局'),
        ),
        body: card,
      ),
    );
  }
}
