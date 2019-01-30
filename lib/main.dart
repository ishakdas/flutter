import 'package:flutter/material.dart';
import 'package:wocommore/screens/productList.dart';
import 'package:wocommore/utilities/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Ticaret',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductList(),
      routes: Routes.routes,
    );
  }
}
