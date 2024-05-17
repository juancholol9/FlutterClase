// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin{

  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text(
          'Whatsapp Clone',
          style: TextStyle(color: Colors.white),
          ),

        backgroundColor: Color.fromARGB(255, 7, 94, 84),

        actions: [

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
            ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: Colors.white,
            ),

          ],

        bottom: TabBar(

          controller: _controller,

          tabs: [

            Tab(
              icon: Icon(Icons.camera_alt, color: Colors.white,),
            ),
            Tab(
              child: Text("Chats", style: TextStyle(color: Colors.white),),
            ),
            Tab(
              child: Text("Estados", style: TextStyle(color: Colors.white),),
            ),
            Tab(
              child: Text("Llamadas", style: TextStyle(color: Colors.white),),
            )

          ],

        ),

      ),

      body: TabBarView(
        controller: _controller,
        children: [
          Text("Camara"),
          Text('Chats'),
          Text('Estados'),
          Text('Llamadas'),
        ]

      ),

    );
  }
}