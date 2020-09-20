import 'package:flutter/material.dart';
import 'package:mycatalog/pages/homePage.dart';
import 'package:mycatalog/services/apiServices.dart' as wawa;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        'home': (BuildContext context) => HomePage(),
      },
      home: HomePage(),
    );
  }
}
