// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:world_time_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

    List<WorldTime> locations = [
      WorldTime(urll: 'Europe/London', location: 'London', flag: 'uk.png'),
      WorldTime(urll: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
      WorldTime(urll: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
      WorldTime(urll: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
      WorldTime(urll: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
      WorldTime(urll: 'America/New_York', location: 'New York', flag: 'usa.png'),
      WorldTime(urll: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
      WorldTime(urll: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    ];

    void updateTime(index) async{

      WorldTime instance = locations[index];
      await instance.getTime();

      // navigate to homescreen
      Navigator.pop(context, {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
        'isDayTime': instance.isDayTime
      });

    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Choose a Location',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),

      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(
                  locations[index].location
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        }),
      )

    );
  }
}