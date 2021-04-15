import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:qr/qr.dart';

void main() => runApp(QRcode());

class QRcode extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 26, 26, 26),
          centerTitle: true,
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
