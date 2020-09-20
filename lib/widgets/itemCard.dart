import 'package:flutter/material.dart';
import 'package:mycatalog/models/ProductsModel.dart';

class ItemCard extends StatelessWidget {
  final Products products;
  final Function press;
  const ItemCard({Key key, this.products, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)),
                child: Image.network(
                    'https://github.com/abuanwar072/E-commerce-App-UI-Flutter/blob/master/assets/images/bag_1.png?raw=true'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0 / 4),
            child: Text(
              'Titulo aqui',
              style: TextStyle(color: Colors.black38),
            ),
          ),
          Text("\$234", style: TextStyle(fontWeight: FontWeight.bold))
        ]);
  }
}
