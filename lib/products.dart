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
    return products.length > 0 ?  ListView.builder(
      itemBuilder: _buildProductItem,  // context & index number 
      itemCount: products.length,  // How many products
    ) :Center(child: Text('No product found, please add some'),);   // Implimenting condition using '?' as if and ':' as else statement from 24 - 27
  }
}
