import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
              child: Row(    
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround, 
              children: <Widget>[
                
                Container(
                  
                  color: Colors.blue,
                  width:100,
                  height: 100
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(color: Colors.yellow,width: 100,height:100),
                    Container(color: Colors.green,width: 100,height:100),
                  ],
                ),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                
          ],
        ),
      ),
      
        )
    );
  }
}