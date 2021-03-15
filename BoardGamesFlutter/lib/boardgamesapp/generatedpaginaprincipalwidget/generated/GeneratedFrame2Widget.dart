import 'package:flutter/material.dart';
import 'package:flutterapp/boardgamesapp/generatedpaginaprincipalwidget/generated/GeneratedRectangle9Widget1.dart';
import 'package:flutterapp/boardgamesapp/generatedpaginaprincipalwidget/generated/Generated5ea2a70856ef7e00041514141Widget1.dart';

/* Frame Frame 2
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedFrame2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/GeneratedGameWidget'),
      child: Container(
        width: 342.0,
        height: 152.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 0.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 342.0,
                height: 152.0,
                child: GeneratedRectangle9Widget1(),
              ),
              Positioned(
                left: 20.0,
                top: 11.0,
                right: null,
                bottom: null,
                width: 97.0,
                height: 131.0,
                child: Generated5ea2a70856ef7e00041514141Widget1(),
              )
            ]),
      ),
    );
  }
}