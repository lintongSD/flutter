import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  title: '反向传值',
  home: FirstPage(),
));

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone'),
      ),
      body: Center(
        child: RouteBtn(),
      ),
    );
  }
}

class RouteBtn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('区号选择'),
      onPressed: (){_navigateToDetail(context);},
    );
  }
}
_navigateToDetail(BuildContext context) async {
  final result = await Navigator.push(
    context,
    MaterialPageRoute(builder: (context)=>Detail()),
  );
  Scaffold.of(context).showSnackBar(
    SnackBar(content: Text('$result')),
  );
}
class Detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('详情页面'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('山东区号'),
              onPressed: (){
                Navigator.pop(context, '山东区号274500');
              },),
            RaisedButton(
              child: Text('北京区号'),
              onPressed: (){
                Navigator.pop(context, '北京区号100000');
              },)
          ],
        ),
      ),
    );
  }
}