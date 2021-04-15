import 'dart:convert';
import 'package:boardgames/pages/LogIn/login.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:boardgames/pages/home.dart';
import 'package:boardgames/api/apiUser.dart';

String _email, _password;
bool acces = false;

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreen createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  List<ApiUser> userApi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 19, 19, 19),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              widthFactor: 0.6,
              heightFactor: 0.6,
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(200)),
                color: Color.fromARGB(255, 49, 49, 49),
                child: Container(
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 400,
                height: 470,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/logo.png',
                          width: 140,
                        ),
                      ),
                    ),
                    Container(
                      height: 10,
                    ),
                    Container(
                      width: 250,
                      child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.deepPurpleAccent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.person, color: Colors.white),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0)),
                                ),
                                width: 200,
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: 'Username',
                                    ),
                                    style: TextStyle(color: Colors.black),
                                    onChanged: (val) => _email = val,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Container(
                      height: 10,
                    ),
                    Container(
                      width: 250,
                      child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.deepPurpleAccent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.person, color: Colors.white),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0)),
                                ),
                                width: 200,
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: 'Email',
                                    ),
                                    style: TextStyle(color: Colors.black),
                                    onChanged: (val) => _email = val,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Container(
                      height: 10,
                    ),
                    Container(
                      width: 250,
                      child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.deepPurpleAccent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.lock, color: Colors.white),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0)),
                                ),
                                width: 200,
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: 'Contraseña',
                                    ),
                                    obscureText: true,
                                    obscuringCharacter: "*",
                                    style: TextStyle(color: Colors.black),
                                    onChanged: (val) => _password = val,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Container(
                      height: 15,
                    ),
                    Container(
                      width: 180,
                      height: 40,
                      child: RaisedButton(
                        onPressed: () => (getLoginApi(context)),
                        color: Colors.deepPurpleAccent,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Text(
                          'Registrarse',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 40,
                      child: RaisedButton(
                        onPressed: () => (Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        )),
                        color: Color.fromARGB(255, 19, 19, 19),
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> getLoginApi(BuildContext context) async {
    final apiurl =
        await http.get("http://norwind-001-site1.btempurl.com/api/users");
    if (apiurl.statusCode == 200) {
      List<ApiUser> userApi = jsonDecode(apiurl.body)
          .map((item) => ApiUser.fromJson(item))
          .toList()
          .cast<ApiUser>();
      for (var item in userApi) {
        if (item.email == _email) {
          if (item.password == _password) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (BuildContext context) => Home()),
                ModalRoute.withName('/'));
          }
        }
      }
    }
    return false;
  }
}
