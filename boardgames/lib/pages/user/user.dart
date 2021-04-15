import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:boardgames/pages/user/qrcode.dart';

class UserPage extends StatefulWidget {
  UserPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  User createState() => User();
}

class User extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: profile());
  }

  Widget profile() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
              Color.fromARGB(255, 100, 56, 156),
              Colors.deepPurpleAccent
            ])),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // color: Colors.amber,
              height: height / 1.5,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 40, 34, 34),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: height / 22.5,
            child: Column(
              children: <Widget>[
                Container(
                  height: height / 5,
                  width: height / 5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png"),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                          offset: Offset(0, 1),
                        )
                      ],
                      color: Colors.white,
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Container(
                    child: Text(
                      'Oriol Molina',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'OpenSans',
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      height: height / 16.5,
                      width: width / 3.5,
                      child: OutlineButton(
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                        color: Colors.white,
                        onPressed: () {},
                        child: Text(
                          'Contact',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 3.5,
                      height: height / 16.5,
                      child: OutlineButton(
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                        onPressed: () {},
                        child: Text(
                          'Message',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 3.5,
                      height: height / 16.5,
                      child: OutlineButton(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QRcode(),
                              ),
                            );
                          },
                          child: Text(
                            'QR',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ),
                Container(
                  height: 25,
                ),
                Text(
                  'Mis Reviews:',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Container(
                  height: 25,
                ),
                Container(
                  height: 130,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 40, 34, 34),
                    boxShadow: [
                      BoxShadow(color: Colors.white, spreadRadius: 1),
                    ],
                    image: DecorationImage(
                      image: AssetImage("assets/virus.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.7), BlendMode.dstATop),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 380,
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'VIRUS! (2015)',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              Text(
                                'Virus me parece muy buen juego para jugarlo tanto en familia como con amigos, lo recomiendo.',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                              Text(
                                '                                                         Puntuación: ★8',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  height: 130,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 40, 34, 34),
                    boxShadow: [
                      BoxShadow(color: Colors.white, spreadRadius: 1),
                    ],
                    image: DecorationImage(
                      image: AssetImage("assets/catan.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.7), BlendMode.dstATop),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 380,
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Catan (1995)',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              Text(
                                'Juego muy recomendado para jugar contra amigos, pero ten cuidado que los puedes perder. La unica pega es muy largo',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                              Text(
                                '                                                         Puntuación: ★7',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
