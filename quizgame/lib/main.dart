import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        body:SafeArea(          
          child: QuizApp()),
          appBar: AppBar(
          backgroundColor:Colors.blueGrey[700],
          title:Center(child:Text('Text')),         
          ),
          backgroundColor: Colors.blueGrey[900],        
      )
    );
    
    }
}

class QuizApp extends StatelessWidget {
  List question =[['You can lead a cow down stairs but not up stairs.', false,],
  [ 'Approximately one quarter of human bones are in the feet.', true,],
  ['A slug\'s blood is green.', true,]]; 

  @override
  Widget build(BuildContext context) {
  

 return Column(         
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
                      
          Padding(     

            padding: const EdgeInsets.all(40.0),
            child: Text(question[0][0],
            style: TextStyle(fontSize: 20,color: Colors.white ),
            
            ),
          ),                  
          FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 60,vertical: 20),
              onPressed: (){}, 
              child: Text('TRUE',style: TextStyle(color: Colors.white),
              ),color: Colors.blue,
            ),
            SizedBox(height: 20,),
            FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 60,vertical: 20),
              onPressed: (){}, 
              child: Text('FALSE',style: TextStyle(color: Colors.white)),color: Colors.red,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.ac_unit,color: Colors.white,),

              ],
            )
             

          ],
        );
      
    
  }
}