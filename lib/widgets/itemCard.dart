import 'package:flutter/material.dart';
import 'package:mycatalog/models/ProductsModel.dart';

class ItemCard extends StatelessWidget {
  final Products products;
  final Function press;
  const ItemCard({Key key, this.products, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Image.network(products.image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0 / 4),
              child: Text(
                products.title,
                style: TextStyle(color: Colors.black38),
              ),
            ),
            Text("\$${products.price}",
                style: TextStyle(fontWeight: FontWeight.bold))
          ]),
    );
  }
}
