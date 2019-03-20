import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]){
    print('[Product Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int  index){
    return Card(
                    child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text(products[index])
                  ],
                    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('[Product Widget] Built');
    return ListView.builder(
      itemBuilder: _buildProductItem,  // context & index number 
      itemCount: products.length,  // How many products
    );
  }
}
