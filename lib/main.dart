import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import './products_manager.dart';

void main() {
  // debugPaintSizeEnabled =true;
  // debugPaintBaselinesEnabled =true;  // Baseline of the texts.
  // debugPaintPointersEnabled =true;  //Shows where tap event is registered
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowMaterialGrid: true, //for grid
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.deepPurple,
          brightness: Brightness.light),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food App'),
        ),
        body: ProductManager(
          startingProduct: 'Food Tester',
        ),
      ),
    );
  }
}
