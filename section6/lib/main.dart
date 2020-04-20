import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
      backgroundColor: Colors.teal,
      body: 
      SafeArea(
        child: Column(   
          children: <Widget>
          [
            CircleAvatar(
            backgroundImage:AssetImage('images/profile.jpg'),
            radius: 50,
            ),
            Text('Developer'),
            Container(
              margin: EdgeInsets.only(left: 30.0,right:30,top:50.0),
              padding:EdgeInsets.only(top:10,bottom: 10),            
              color:Colors.white,
              child: Row(                
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[              
                  Icon(Icons.account_circle,color: Colors.teal,),
                  Container(
                    margin: EdgeInsets.only(left:20.0),
                    child: Text('Raizen John A. Sangalang'),
                    color: Colors.white,
                  ),
                
            ],
            ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0,right:30,top:10.0),
              padding:EdgeInsets.only(top:10,bottom: 10),            
              color:Colors.white,
              child: Row(                
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[              
                  Icon(Icons.email,color: Colors.teal,),
                  Container(
                    margin: EdgeInsets.only(left:20.0),
                    child: Text('raizengxd@gmail.com'),
                    color: Colors.white,
                  ),
                
            ],
            ),
            )



            
        ],  
        ),
        
      ),

      )
    );
  }
}