import 'package:flutter/material.dart';

/* Rectangle house 2
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedHouse2Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, '/GeneratedPaginaPrincipalWidget'),
      child: Container(
        width: 35.0,
        height: 35.0,
        child: ClipRRect(
          borderRadius: BorderRadius.zero,
          child: Image.asset(
            "assets/images/9352a9847031cefbc87f12476b1831c4d717add0.png",
            color: null,
            fit: BoxFit.cover,
            width: 35.0,
            height: 35.0,
            colorBlendMode: BlendMode.dstATop,
          ),
        ),
      ),
    );
  }
}