// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map? data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)?.settings.arguments as Map?;
    print(data);

    // set background
    String bgImage = data?['isDaytime'] ? 'day.png' : 'night.png';
    Color? bgColor = data?['isDaytime'] ? Colors.blue : Colors.indigo[700];

    return Scaffold(

      backgroundColor: bgColor,

      body: SafeArea(

        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            )
          ),

          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: [

                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit_location_alt,
                        color: Colors.grey[300],
                      ),
                      SizedBox(width: 8), // Adjust the spacing between the icon and the text
                      Text('Edit Location',
                        style: TextStyle(
                          color: Colors.grey[300]
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data?['location'],
                      style: TextStyle(
                        fontSize: 28,
                        letterSpacing: 2,
                        color: Colors.white,
                      )
                    )
                  ]
                ),

                SizedBox(height: 20,),

                Text(
                  data?['time'],
                  style: TextStyle(
                    fontSize: 66,
                    color: Colors.white,
                  ),
                ),

              ],
            ),
          ),
        )
      ),

    );
  }
}