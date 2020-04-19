import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column( 
        
         
        children: <Widget>[
          CircleAvatar(
          backgroundImage:AssetImage('images/profile.jpg'),
          radius: 50,
          ),
          Container(child: Row(children: <Widget>[
            Icon(Icons.account_circle,color: Colors.white,),
          ],),)
          
        ],  
        ),
      ),

      )
    );
  }
}