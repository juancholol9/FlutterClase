import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{


  String location; // location name for the UI
  String time=''; // time in that location
  String flag; // url to an asset flag icon
  String urll; // location url for api endpoint
  late bool isDayTime; // true or false if daytime or not

  WorldTime({required this.location, required this.flag, required this.urll, });

    Future <void> getTime() async{

      try{

        //make the request
        Uri url = Uri.parse('https://worldtimeapi.org/api/timezone/$urll');
        Response response = await get(url);
        Map data = jsonDecode(response.body);
        // print(data);

        //get properties from data
        String datetime = data["utc_datetime"];
        String offset = data["utc_offset"].substring(1,3);

        // print(datetime);
        // print(offset);

        //create a datetime object
        DateTime now = DateTime.parse(datetime);
        now = now.add(Duration(hours: int.parse(offset)));

        //set time property
        isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
        time = DateFormat.jm().format(now);

      }
      catch (e){

        print('Caught error: $e');
        time = 'Could not get time data';

      }



  }

}