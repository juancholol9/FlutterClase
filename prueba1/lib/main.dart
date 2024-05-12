import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: home(),
));

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar (
        title: Text("The Weather Channel"),
      ),

      body:

      Padding(

        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              'Jun 2',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 18.0,
              ),
            ),

            Text(
              'London',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                ),
            ),

            SizedBox(height: 10.0,),

            Text(
              '21°C',
              style: TextStyle(
                color: Colors.yellow[600],
                fontSize: 60.0,
              ),
            ),

            Text(
              'Overcast Clouds',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 30.0,
              ),
            ),

            SizedBox(height: 20.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'This Week',
                  style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.0,),

            Text(
              'Temperatures',
              style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0,),

            Row(
              children: [
                SizedBox(width: 30),
                Column(
                  children: [
                    Text(
                      '8 PM',
                      style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[700]
                      ),
                    ),
                    Icon(Icons.cloud,color: Colors.blue,),
                    Text(
                      '21°C',
                      style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 50),
                Column(
                  children: [
                    Text(
                      '11 PM',
                      style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[700]
                      ),
                    ),
                    Icon(Icons.cloud,color: Colors.blue,),
                    Text(
                      '21°C',
                      style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 30.0,),

            Text(
              'Details',
              style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20.0,),

            Row(
              children: [
                Text(
                  'Minimum',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(width: 50),
                Text(
                  'Maximum',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Text(
                  '21°C',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 82),
                Text(
                  '22°C',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.0,),

            Row(
              children: [
                Text(
                  'Pressure',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(width: 50),
                Text(
                  'Humidity',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Text(
                  '1020 Pa',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  '41%',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

          ],

        ),

      )

    );
  }
}