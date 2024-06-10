import 'package:http/http.dart';
import 'dart:convert';

class Connect {
  int id;
  String code;
  String description;
  int precio;
  String url_image;

  Map<String, dynamic>? data;

  Connect({
    required this.id,
    required this.code,
    required this.description,
    required this.precio,
    required this.url_image,
  });

  Future<void> getAPI() async {
    try {
      // Make the request
      Uri url = Uri.parse('https://mimosbackend-c1d256b6d360.herokuapp.com/products');
      Response response = await get(url);
      data = jsonDecode(response.body);
      print(data);
    } catch (e) {
      print(e);
    }
  }
}
