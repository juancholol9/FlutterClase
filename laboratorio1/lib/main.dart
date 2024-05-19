import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<dynamic> data1 = [];

  void getNews() async {
    try {
      Uri url = Uri.parse('https://api.spacexdata.com/v4/launches');
      Response response = await get(url);
      List data = jsonDecode(response.body);

      setState(() {
        data1 = data;
      });

    } catch (e) {
      print('No se pudo conectar a la api. Error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data1.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
            child: Card(
              child: Container(
                color: Colors.red[600],
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    data1[index]['name'] ?? 'No Title',
                  ),
                  subtitle: Text(
                    "Fecha de lanzamiento: ${data1[index]['static_fire_date_utc']}\nEstado: ${data1[index]['success']}",
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(data1[index]['links']['patch']['large'] ?? "https://i.ytimg.com/vi/LD_rhPmLwD4/hqdefault.jpg"),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
