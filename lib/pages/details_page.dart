import 'package:flutter/material.dart';
import 'package:mycatalog/models/ProductsModel.dart';
import 'package:mycatalog/widgets/detailsBody.dart';

class DetailsPage extends StatelessWidget {
  final Products product;
  const DetailsPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(children: <Widget>[
          Text(
            product.category,
            style: TextStyle(
                fontWeight: FontWeight.w100, fontSize: 14, color: Colors.black),
          ),
          Text(
            product.title,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2F2F3E)),
          ),
        ]),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => Navigator.pop(context)),
      ),
      body: SafeArea(
        child: BodyDetails(
          product: product,
        ),
      ),
    );
  }
}
