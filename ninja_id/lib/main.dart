// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[900],

      appBar: AppBar(
        title: Text(
          "Ninja ID Card",
          style: TextStyle(color: Colors.white),
          ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjaLevel += 1;
            });
          },
          backgroundColor: Colors.grey[800],
          child: Icon(Icons.add),
        ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Foto.png'),
                radius: 40.0,
              ),
            ),

            SizedBox(height: 10.0,),

            Divider(
              height: 70.0,
              color: Colors.grey[600],
            ),

            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )
            ),

            SizedBox(height: 10.0,),

            Text(
              'Juan R. Mejia',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              )
            ),

            SizedBox(height: 30.0,),

            Text(
              'Current Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )
            ),

            SizedBox(height: 10.0,),

            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              )
            ),

            SizedBox(height: 30.0,),

            Row(

              children: [

                Icon(
                  Icons.email,
                  color: Colors.white
                ),

                SizedBox(width: 10.0),

                Text(
                  "juanramonmejiapadilla@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    letterSpacing: 1.0
                    ),
                )

              ]

            )

          ],

        ),

      ),

    );
  }
}
