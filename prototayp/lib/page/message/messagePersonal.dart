import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageSpecial extends StatefulWidget {
  @override
  _MessageSpecialState createState() => _MessageSpecialState();
}

class _MessageSpecialState extends State<MessageSpecial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Center(child: Text("Message for you")),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/image1.png'),
                Text(
                  " Happy 6th Anniversary \nBabe ",
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
