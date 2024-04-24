// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import "package:flutter/foundation.dart";
// import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("My App"),
        //   backgroundColor: Colors.red[600],
        //   elevation: 0,
        //   leading: Icon(Icons.menu),
        //   actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout_outlined))],
        // ),

        // body: Center(
        //   child: Container(
        //     height: 300,
        //     width: 300,
        //     decoration: BoxDecoration(
        //       color: Colors.amber,
        //       borderRadius: BorderRadius.circular(20)
        //       ),
        //     child: Icon(
        //       Icons.star_border_rounded,
        //       color:Colors.blue,
        //       size: 50,
        //     ),
        //   ),
        // ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
              Container(
                height: 350,
                color: const Color.fromARGB(255, 0, 98, 255),
              ),
              Container(
                height: 350,
                color: Color.fromARGB(255, 0, 57, 150),
              ),
              Container(
                height: 350,
                color: Color.fromARGB(255, 0, 29, 76),
              ),
          ],
        )
      ),
    );
  }
}