import 'package:flutter/material.dart';
import './products.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;
  Products(this.products, {this.deleteProduct}) {
    print('[Product Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.pushNamed<bool>(
                            context, '/product/' + index.toString())
                        .then((bool value) {
                      if (value) {
                        deleteProduct(index);
                      }
                    }),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    //Made a saperate widget return type function to return this list view
    Widget productCards;
    if (products.length > 0) {
      // Proper method to impliment if statement
      productCards = ListView.builder(
        itemBuilder: _buildProductItem, // context & index number
        itemCount: products.length, // How many products
      );
    } else {
      productCards =
          Container(); // If you dont want to render anything just return Container()
    }
    return productCards;
  }

  @override
  Widget build(BuildContext context) {
    print('[Product Widget] Built');
    return _buildProductList();
  }
}
