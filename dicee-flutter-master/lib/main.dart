import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceNumber = 1;
  int rightdiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    
    void randomNumber(){
      leftdiceNumber = Random().nextInt(6)+1;
      rightdiceNumber = Random().nextInt(6)+1; 
    }
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(            
            child: FlatButton(
              onPressed: (){
                setState(() {
                  randomNumber();  
                });
                
              },
              child: Image.asset('images/dice$rightdiceNumber.png'),
            ),
          ),
          Expanded(            
            child: FlatButton(
              onPressed: (){
                setState(() {
                    randomNumber();
                });              
              },
              child: Image.asset('images/dice$leftdiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

