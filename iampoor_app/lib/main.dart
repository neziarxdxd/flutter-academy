import 'package:flutter/material.dart';

void main() =>runApp(
  MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text('I am Poor'),
        backgroundColor: Colors.teal,
    ),
    backgroundColor: Colors.teal[900],
    body: Center(
      child: Image(
        image: AssetImage('images/image.png'),
        height: 70.0,
        
      ),
    ),
    ),


  )
);
