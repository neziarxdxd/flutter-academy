import 'package:flutter/material.dart';
import 'Questions.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
 int questionNumber = 0;
  // List question =[['You can lead a cow down stairs but not up stairs.', false,],
  // [ 'Approximately one quarter of human bones are in the feet.', true,],
  // ['A slug\'s blood is green.', true,]]; 
  // List test = [Questions("fdfd", true)];
  List<Questions> questionBank = [
    Questions('You can lead a cow down stairs but not up1 stairs',false),
    Questions('You can lead a cow down stairs but not up22 stairs',true),
    Questions('You can lead a cow down stairs but not up232 stairs',false),
    
  ];
  void changeNumber(){
    questionNumber++;
  }

  @override
  Widget build(BuildContext context) {
  

 return Column(         
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
                      
          Padding(     

            padding: const EdgeInsets.all(40.0),
            child: Text(questionBank[questionNumber].question,
            style: TextStyle(fontSize: 20,color: Colors.white ),
            
            ),
          ),                  
          FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 60,vertical: 20),
              onPressed: (){ 
                setState(() {
                  changeNumber();                  
                });
                               

              }, 
              child: Text('TRUE',style: TextStyle(color: Colors.white),
              ),color: Colors.blue,
            ),
            SizedBox(height: 20,),
            FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 60,vertical: 20),
              onPressed: (){
                 setState(() {
                  changeNumber();                  
                });

              }, 
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






  ///dfdf

