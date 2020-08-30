import 'package:flutter/material.dart';

class MessageSpecial extends StatefulWidget {
  @override
  _MessageSpecialState createState() => _MessageSpecialState();
}

class _MessageSpecialState extends State<MessageSpecial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: Column(
          children: [
            Text(" Happy 6th Anniversary Babe "),
          ],
        ),
      ),
    );
  }
}
