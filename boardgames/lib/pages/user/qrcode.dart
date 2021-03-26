import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:qr/qr.dart';

import 'package:boardgames/pages/user/user.dart';

void main() => runApp(QRcode());

class QRcode extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QRPage(),
    );
  }
}

class QRPage extends StatefulWidget {
  @override
  _QRPage createState() => _QRPage();
}

class _QRPage extends State<QRPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 26, 26, 26),
          centerTitle: true,
          leading: (IconButton(
            icon: FadeInRight(
                delay: Duration(milliseconds: 700),
                child: FaIcon(
                  Icons.menu,
                  size: 30,
                  color: Colors.deepPurpleAccent,
                )),
            onPressed: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (BuildContext context) => QRPage()));
            },
          )),
        ),
        body: Center(
            child: PrettyQr(
                image: AssetImage('assets/logo.png'),
                typeNumber: 3,
                size: 300,
                data: 'https://www.facebook.com/OriolMolinaLopez',
                errorCorrectLevel: QrErrorCorrectLevel.M,
                roundEdges: true)));
  }
}
