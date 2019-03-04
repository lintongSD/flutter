import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  Product(this.title, this.description);
}

void main() => runApp(MaterialApp(
  title: '页面间传值',
  home: ProductList(
    products: List<Product>.generate(20, (index)=>Product('商品$index', '这是一个商品详情, 编号为$index')),
  ),
));

class ProductList extends StatelessWidget{
  final List<Product> products;
  ProductList({Key key, @required this.products}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index){
          return ListTile(
            title:Text(products[index].title),
            onTap: ()=> Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>ProductDetail(key: key ,product: products[index]),
                ),
              ),
          );
        },
      ),
    );
  }
}

class ProductDetail extends StatelessWidget{
  final Product product;
  ProductDetail({Key key, @required this.product}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Center(
        child: Text(product.description),
      ),
    );
  }
}