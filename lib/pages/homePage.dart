import 'package:flutter/material.dart';
import 'package:mycatalog/widgets/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Body(),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          icon: Icon(Icons.arrow_back), color: Colors.black, onPressed: () {}),
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
}
