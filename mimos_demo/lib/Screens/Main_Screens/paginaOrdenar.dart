import 'package:flutter/material.dart';
import '../../Widgets/General/_createAppBar.dart';

import 'dart:convert';
import 'package:http/http.dart';

// import '../Services/connect.dart';
class paginaOrdenar extends StatefulWidget {
  const paginaOrdenar({super.key});

  @override
  _paginaOrdenarState createState() => _paginaOrdenarState();
}

class _paginaOrdenarState extends State<paginaOrdenar> {

  List<dynamic> articles = [];


  void obtenerAPI() async {

    try {
      print('entrando a la api');
      Uri url = Uri.parse('https://mimosbackend-c1d256b6d360.herokuapp.com/products');
      Response response = await get(url);
      // Map<String, dynamic> data = jsonDecode(response.body);
      List data = jsonDecode(response.body);

      // setState(() {
      //   articles = data['articles'];
      // });
      print(data);

    } catch (e) {
      print('No se pudo conectar a la api. Error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    obtenerAPI();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),

      body: Text("PAGIINA ORDENAR")
    );
  }
}
