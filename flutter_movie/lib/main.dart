import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "电影海报实例",
      home: Scaffold(
        appBar: AppBar(
            title: Text('电影海报实例')
        ),
        body: GridView.count(
          padding: EdgeInsets.all(10.0),
          crossAxisSpacing: 10.0,
          crossAxisCount: 3,
          children: <Widget>[
            Text("I love imooc!!"),
            Text("I love imooc!!"),
            Text("I love imooc!!"),
            Text("I love imooc!!"),
            Text("I love imooc!!"),
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1548254978&di=f3d0592e450fafc6c4b3609631720939&imgtype=jpg&er=1&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F8644ebf81a4c510f3666841a6b59252dd42aa514.jpg',
                semanticLabel: 'aaaaa',
            ),
          ],
        ),
      )
    );
  }
}