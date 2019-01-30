import 'package:flutter/material.dart';
import 'package:wocommore/widget/productListRow.dart';

class ProductList extends StatelessWidget {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ürünler Listesi",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: _buildProductList(),
    );
  }

  _buildProductList() {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildFilterWidgets(screenSize);
          } else if (index == 4) {
            return SizedBox(height: 12.0,);
          } else {
            return _buildProductListRow();
          }
        },
      ),
    );
  }

  _buildFilterWidgets(Size screenSize) {
    return Container(
      margin: EdgeInsets.all(12.0),
      width: screenSize.width,
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildFilterBottom("Sırala"),
              Container(
                color: Colors.black,
                width: 2.0,
                height: 24.0,
              ),
              _buildFilterBottom("Filtrele"),
            ],
          ),
        ),
      ),
    );
  }

  _buildFilterBottom(String title) {
    return InkWell(
      onTap: (){
        print(title);
      },
      child: Row(
        children: <Widget>[
          Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
          SizedBox(
            width: 2.0,
          ),
          Text(title)
        ],
      ),
    );
  }

  _buildProductListRow() {

    return ProductListRow(name:"L10 Muhasebe",currentPrice:150,originalPrice:300,discount:50,imageUrl:"https://pbs.twimg.com/profile_images/1066283725804179456/Otl_a1-f_400x400.jpg");
  }

}
