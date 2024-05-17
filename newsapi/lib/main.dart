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

  List<dynamic> articles = [];

  void getNews() async {
    try {
      String key = 'dfec4bf56053494f9002145e147ec62f';
      Uri url = Uri.parse('https://newsapi.org/v2/top-headlines?country=us&apiKey=$key');
      Response response = await get(url);
      Map<String, dynamic> data = jsonDecode(response.body);

      setState(() {
        articles = data['articles'];
      });

      print(articles);
    } catch (e) {
      print('No se pudo conectar a la api. Error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    getNews();
  }

  Widget _buildLeadingImage(String? url) {
    if (url != null) {
      return CircleAvatar(
        backgroundImage: NetworkImage(url),
      );
    } else {

      return CircleAvatar(
        backgroundImage: AssetImage('path_to_placeholder_image'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
            child: Card(
              child: Container(
                color: Colors.blue,
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    articles[index]['title'] ?? 'No Title',
                  ),
                  leading: _buildLeadingImage(articles[index]['urlToImage']),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
