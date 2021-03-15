import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:http/http.dart' as http;

import 'package:boardgames/login.dart';
import 'package:boardgames/api/apiUser.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<List<ApiUser>> _listadoUser;
  Future<List<ApiUser>> _getUser() async {
    final response = await http
        .get('http://boardgamesnet.gear.host/swagger/ui/index#/Users');

    if (response.statusCode == 200) {
      print(response.body);
    } else {
      throw Exception("Falló la conexxión");
    }
  }

  @override
  void initState() {
    super.initState();
    _getUser();
  }

  Widget build(BuildContext context) {
    return new SplashScreen(
      title: new Text(
        'BOARDGAMES',
        style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
            height: 3),
      ),
      seconds: 2,
      navigateAfterSeconds: LoginScreen(),
      image: new Image.asset('assets/loading.gif'),
      backgroundColor: Color.fromARGB(255, 19, 19, 19),
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 120.0,
      useLoader: false,
    );
  }
}
