import 'package:flutter/material.dart';
import 'package:mycatalog/models/ProductsModel.dart';

class BodyDetails extends StatelessWidget {
  final Products product;
  const BodyDetails({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: <Widget>[
      Container(
        child: Stack(children: <Widget>[
          Image.network(
            product.image,
            height: 250,
            width: 250,
            fit: BoxFit.contain,
          ),
          Positioned(
            bottom: 0,
            right: 20.0,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              elevation: 2,
              onPressed: () {},
              child: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            ),
          ),
        ]),
      ),
      SizedBox(
        height: 20.0,
      ),
      Expanded(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Text(
                product.description,
                textAlign: TextAlign.justify,
                style: TextStyle(height: 1.5, color: Color(0xFF6F8398)),
              )
            ],
          ),
        ),
      )),
      Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              child: Text(
                "ADD TO BAG +",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2F2F3E)),
              ),
              color: Colors.transparent,
              onPressed: () {},
            ),
            Text(
              "\$${product.price}",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w100,
                  color: Color(0xFF2F2F3E)),
            )
          ],
        ),
      )
    ]);
  }
}
