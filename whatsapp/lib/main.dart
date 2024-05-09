import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 18, 140, 126),
        // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF128C7E))
      ),
      home: Homescreen(),

    );
  }
}


