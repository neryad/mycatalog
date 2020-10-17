import 'package:flutter/material.dart';
import 'package:mycatalog/widgets/body.dart';
import 'package:mycatalog/widgets/menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Body(),
      drawer: Menu(),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        "My Catalog",
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
}
