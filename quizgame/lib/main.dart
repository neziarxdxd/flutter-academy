import 'package:flutter/material.dart';
import 'QuizBook.dart';
void main() => runApp(MyApp());

QuizBook quizBook = new QuizBook();
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
  
  List<Widget> countingPoints =[];
  
  void checkAnswer(bool userAnswer){ 
    quizBook.nextQuestion(); 
   if (userAnswer == quizBook.getAnswer()){
    countingPoints.add(Icon(Icons.check,color: Colors.green,));
   }
   else{
     countingPoints.add(Icon(Icons.close,color:Colors.red));
   }
    
  }


  @override
  Widget build(BuildContext context) {
  

 return Column(         
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
                      
          Padding(     

            padding: const EdgeInsets.all(40.0),
            child: Text(quizBook.getQuestion(),
            style: TextStyle(fontSize: 20,color: Colors.white ),
            
            ),
          ),                  
          FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 60,vertical: 20),
              onPressed: (){ 
                setState(() {
                  checkAnswer(true);                  
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
                  checkAnswer(false);                  
                });
              }, 
              child: Text('FALSE',style: TextStyle(color: Colors.white)),color: Colors.red,
            ),
            Row(children:countingPoints,)
             

          ],
        );
      
    
  }
}






  ///dfdf

