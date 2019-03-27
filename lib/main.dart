import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import './pages/auth.dart';
import './pages/products_admin.dart';
import './pages/products.dart';

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
      //home: AuthPage(),
      routes: {
        '/admin': (BuildContext context) =>
            ProductsAdminPage(), //Use named Routes to perorm Navigation
        '/': (BuildContext context) => ProductsPage() // for home page but must remove home: AuthPage() or any nav from home to others
      },
    );
  }
}
