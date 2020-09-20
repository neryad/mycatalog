import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mycatalog/config/apiConfig.dart' as conf;
import 'package:mycatalog/models/ProductsModel.dart';

final String apiUrl = conf.CONFIG['API_URL'];

Future<List<Products>> getProducts() async {
  final response = await http.get(apiUrl + '/products');
  final decodeData = json.decode(response.body);
  
  return decodeData;
}
