import 'package:flutter/material.dart';
import 'package:boardgames/pages/home.dart';
import 'package:boardgames/pages/hola.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disseny App',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => Home(),
        'rating': (BuildContext context) => Rating(),
      },
    );
  }
}
