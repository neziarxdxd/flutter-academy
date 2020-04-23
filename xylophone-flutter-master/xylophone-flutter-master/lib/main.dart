import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(){
    print('TEST');
  }

  Expanded buildButton({Color color}){
   return Expanded(
     child: FlatButton(
     onPressed:(){
       playSound();
       },
       color: color,),);
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(color: Colors.red),
              buildButton(color: Colors.orange),
              buildButton(color: Colors.yellow),
              buildButton(color: Colors.green),
              buildButton(color: Colors.blue),
              buildButton(color: Colors.indigo),
              buildButton(color: Colors.purple),
             
                            
            ],
          ),
        ),
      ),
    );
  }
}
