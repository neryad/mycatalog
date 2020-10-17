import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mycatalog/services/apiServices.dart';
import 'package:mycatalog/widgets/body.dart';
import 'package:mycatalog/widgets/itemCard.dart';
import 'package:mycatalog/widgets/menu.dart';

import 'details_page.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apiServices = new ApiServices();
    var products = [];
    return Scaffold(
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container()
              // Text(
              //   "My Catalog",
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              // ),
              ),
          //Categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: FutureBuilder(
                future: apiServices.getProducts(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                        child: CircularProgressIndicator(
                      //backgroundColor: Colors.black,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.black),
                    ));
                  }

                  products = snapshot.data;

                  if (products.length == 0) {
                    return Center(
                      child: Text('No Favorite added'),
                    );
                  }
                  return ListView.builder(
                      itemCount: radomFav(),
                      itemBuilder: (context, index) => ListTile(
                            title: Text((products[index].title)),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsPage(
                                          product: products[index])))
                            },
                          ));
                },
              ),
            ),
          ),
        ],
      ),
      drawer: Menu(),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        "My favorites",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
      ),
      // leading: IconButton(
      //     icon: Icon(Icons.menu), color: Colors.black, onPressed: () {}),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.black,
            onPressed: () {}),
        SizedBox(
          width: 20.0 / 2,
        )
      ],
    );
  }

  radomFav() {
    Random rnd;
    int min = 1;
    int max = 7;
    rnd = new Random();
    int r = min + rnd.nextInt(max - min);
    print("$r is in the range of $min and $max");
    return r;
  }
}
