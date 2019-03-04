import 'package:flutter/material.dart';
void main() => runApp(MyApp());
//void main(){
//  runApp(MyApp());
//}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('我的歌单'),
        ),
        body:
        ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.arrow_downward),
              title: Text('正在下载第一首歌'),
            ),
            MyCell(),
            MyCell(),
            MyCell(),
          ],
        ),
//      Center(
//        child: Container(
//          height: 200,
//          child: ListView(
//            scrollDirection: Axis.horizontal,
//            children: <Widget>[
//              Container(
//                width: 180,
//                color: Colors.deepOrange,
//              ),
//              Container(
//                width: 180,
//                color: Colors.deepPurple,
//              ),
//              Container(
//                width: 180,
//                color: Colors.greenAccent,
//              ),
//              Container(
//                width: 180,
//                color: Colors.blueGrey,
//              )
//            ],
//          ),
//        ),
//      )
      ),
    );
  }
}

class MyCell extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 60.0,
      padding: EdgeInsets.all(15),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.arrow_downward,
          ),
          Text(
            '我是一个cell',
          ),
          Image.network(
            'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
            color: Colors.deepOrange,
          )
        ],
      )
    );
  }
}