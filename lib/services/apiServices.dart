import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mycatalog/config/apiConfig.dart' as conf;
import 'package:mycatalog/models/ProductsModel.dart';
import 'package:mycatalog/models/categories.dart';

class ApiServices {
  var products;

  final String apiUrl = conf.CONFIG['API_URL'];

  String _selecteGategory = 'All';

  List<Category> categories = [
    Category('All'),
    Category('women clothing'),
    Category('electronics'),
    Category('jewelery'),
    Category('men clothing'),
  ];
  String get getSelectedCategory => this._selecteGategory;
  set selectCategroty(String valor) {
    this._selecteGategory = valor;

    this.getProductsByCategory(valor);
  }

  Future<List<Products>> getProducts() async {
    final res = await http.get(apiUrl + '/products');
    products = productsFromJson(res.body);
    return products;
  }

  Future<List<Products>> getProductsByCategory(String category) async {
    var url = apiUrl + '/products/category/$category';
    if (category == null || category == 'All') {
      url = apiUrl + '/products';
    }
    final res = await http.get(url);
    products = productsFromJson(res.body);
    return products;
  }
}
