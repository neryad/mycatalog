import 'package:flutter/material.dart';
import 'package:mycatalog/services/apiServices.dart';

class Categories extends StatefulWidget {
  Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

final apiServices = new ApiServices();

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "All",
    "women clothing",
    "electronics",
    "jewelery",
    "men clothing"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategories(index)),
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          apiServices.selectCategroty = categories[index];
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:
                      selectedIndex == index ? Colors.black : Colors.black38),
            ),
            Container(
                margin: EdgeInsets.only(top: 20.0 / 4),
                height: 2,
                width: 30,
                color: selectedIndex == index
                    ? Colors.black38
                    : Colors.transparent)
          ],
        ),
      ),
    );
  }
}
