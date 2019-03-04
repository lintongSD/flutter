import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '导航控制器',
  home: FirstScreen(),
));

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('进入下级页面'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('二级页'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('返回首页'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      )
    );
  }
}