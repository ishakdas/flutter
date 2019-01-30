import 'package:flutter/material.dart';
import 'package:wocommore/screens/productDetail.dart';
import 'package:wocommore/utilities/constants.dart';

class Routes{
  static final routes=<String,WidgetBuilder>{
    Constants.ROUTE_PRODUCT_DETAIL:(BuildContext context)=>ProductDetail()

  };
}