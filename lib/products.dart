import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]) {
    print('[Product Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index])
        ],
      ),
    );
  }

  Widget _buildProductList() {  //Made a saperate widget return type function to return this list view 
 Widget productCards;
    if (products.length > 0) {
      // Proper method to impliment if statement
      productCards = ListView.builder(
        itemBuilder: _buildProductItem, // context & index number
        itemCount: products.length, // How many products
      );
    } 
    else{
      productCards =Container(); // If you dont want to render anything just return Container()
    }
    return productCards;
  }

  @override
  Widget build(BuildContext context) {
    print('[Product Widget] Built');
    return _buildProductList();
  }
}
