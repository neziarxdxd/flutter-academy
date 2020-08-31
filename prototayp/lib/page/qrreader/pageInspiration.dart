import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import '../message/messagePersonal.dart';

TextEditingController outputController;

class FrontPageQuotes extends StatefulWidget {
  @override
  _FrontPageQuotesState createState() => _FrontPageQuotesState();
}

class _FrontPageQuotesState extends State<FrontPageQuotes> {
  void goToMessage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MessageSpecial()));
  }

  var outputController = new TextEditingController();
  String qrCodeText;
  Future _scan() async {
    String barcode = await scanner.scan();
    outputController.text = barcode;

    qrCodeText = outputController.text.toString();
    print(qrCodeText);
    if (qrCodeText == ('bit.ly/ProudProgrammerDeveloper').toString()) {
      setState(() {
        qrCodeText = "YEST THANK YOUUU LORD";
        print("YES they are equal");
        goToMessage();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF3FF),
      body: Center(
        child: Column(
          children: [
            ButtonTheme(
              height: 70,
              minWidth: 200,
              child: FlatButton.icon(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  color: Colors.black87,
                  onPressed: () {
                    setState(() {
                      _scan();
                    });
                  },
                  icon: Icon(Icons.add_a_photo, color: Colors.white),
                  label: Text(
                    "Scan to get Message",
                    style:
                        TextStyle(fontFamily: "Poppins", color: Colors.white),
                  )),
            ),
            ButtonTheme(
              height: 70,
              minWidth: 200,
              child: FlatButton.icon(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  color: Colors.black87,
                  onPressed: () {
                    setState(() {
                      goToMessage();
                    });
                  },
                  icon: Icon(Icons.add_a_photo, color: Colors.white),
                  label: Text(
                    "Testing lang remove",
                    style:
                        TextStyle(fontFamily: "Poppins", color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
