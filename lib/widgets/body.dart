import 'package:flutter/material.dart';
import 'package:mycatalog/widgets/itemCard.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Woman",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GridView.builder(

                //Cambiar por el lenght de los productos
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0),
                //pasar al item card el products => products: porudct
                itemBuilder: (context, index) => ItemCard()),
          ),
        )
      ],
    );
  }
}
