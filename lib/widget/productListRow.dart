import 'package:flutter/material.dart';
import 'package:wocommore/utilities/constants.dart';

class ProductListRow extends StatelessWidget {
  String name, imageUrl;
  int currentPrice, originalPrice, discount;
  ProductListRow(
      {this.name,
      this.currentPrice,
      this.originalPrice,
      this.discount,
      this.imageUrl});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        _buildProductItemCard(context),
        _buildProductItemCard(context),
      ],
    );
  }

  _buildProductItemCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_DETAIL);
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(this.imageUrl),
              height: 250.0,
              width: MediaQuery.of(context).size.width / 2.2,
            ),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,

                children: <Widget>[
                  Text(
                    this.name,
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        this.currentPrice.toString() + "₺",
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        this.originalPrice.toString() + "₺",
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "%" + this.discount.toString() + "İndirim",
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 8.0,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
