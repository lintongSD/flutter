import 'package:flutter/material.dart';

void main() => runApp(MyApp(
  items:List<String>.generate(100, (i) => '我是第 $i')
));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView'),
        ),
//        body: GridView.count(
//          padding: const EdgeInsets.all(20),
//          crossAxisSpacing: 10,
//          crossAxisCount: 3,
//          children: <Widget>[
//            Text('我是Text'),
//            Text('我是ListView'),
//            Text('我是ImageView'),
//            Text('我是TextField'),
//            Text('我是GridView'),
//          ],
//        ),
      body:  GridView.builder(
        itemCount: items.length,
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index){
          return ListTile(
            title: Text('${items[index]}个元素'),
          );
        },
      ),
      ),
    );
  }
}

