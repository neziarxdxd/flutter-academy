import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());
class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum){
    final audioPlay = AudioCache();
    audioPlay.play('note${soundNum}.wav');
    
  }
  Expanded buildButton({Color color, int soundNumber}){
   return Expanded(
     child: FlatButton(
     onPressed:(){
       playSound(soundNumber);
       },
       color: color,
       ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(color: Colors.red,soundNumber: 1),
              buildButton(color: Colors.orange,soundNumber: 2),
              buildButton(color: Colors.yellow,soundNumber: 3),
              buildButton(color: Colors.green,soundNumber: 4),
              buildButton(color: Colors.blue,soundNumber: 5),
              buildButton(color: Colors.indigo,soundNumber: 6),
              buildButton(color: Colors.purple,soundNumber: 7),
             
                            
            ],
          ),
        ),
      ),
    );
  }
}
