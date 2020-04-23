import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(){
    final audioPlay = AudioCache();
    audioPlay.play('note1.wav');
    
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
