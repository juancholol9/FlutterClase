// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";
import "quote.dart";

class QuoteCard extends StatelessWidget {

  // const QuoteCard({
  //   super.key,
  //   required this.quote,
  // });

  final Quote quote;
  final VoidCallback delete;

  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [

            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600]
              ),
            ),

            SizedBox(height: 6,),

            Text(
              quote.author,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[800]
              ),
            ),

            SizedBox(height: 8,),

            TextButton(
              onPressed: delete,
              child: Row(
                children: [
                  Icon(Icons.delete),
                  SizedBox(width: 8),
                  Text('delete quote'),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
