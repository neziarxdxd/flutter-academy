import 'package:flutter/material.dart';

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
        child: ListView(
          children: [
            Image.asset('images/image1.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                " Happy 6th Anniversary Babe ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 45.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "I am grateful that i have you in my life. I love you always and forevermore",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black87,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
