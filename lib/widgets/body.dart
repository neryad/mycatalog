import 'package:flutter/material.dart';
import 'package:mycatalog/pages/details_page.dart';
import 'package:mycatalog/services/apiServices.dart';
import 'package:mycatalog/widgets/itemCard.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  final String wawa;
  const Body({Key key, this.wawa}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final apiServices = new ApiServices();
    var products = [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "My Catalog",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: FutureBuilder(
              future: apiServices.getProducts(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: Text('No data'));
                }
                products = snapshot.data;

                return GridView.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                        mainAxisSpacing: 20.0,
                        crossAxisSpacing: 20.0),
                    itemBuilder: (context, index) => ItemCard(
                          products: products[index],
                          press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsPage(
                                  product: products[index],
                                ),
                              )),
                        ));
              },
            ),
          ),
        ),
      ],
    );
  }
}
