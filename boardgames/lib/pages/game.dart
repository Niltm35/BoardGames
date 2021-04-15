import 'package:boardgames/api/apiGame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:boardgames/pages/Review.dart';

class Game extends StatelessWidget {
  Game(this.data);

  final ApiGame data;

  TextEditingController textController = TextEditingController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 26, 26),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 26, 26),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Positioned(
                child: Column(
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Image.asset(
                    "assets/" + data.photo,
                    fit: BoxFit.cover,
                    height: 120,
                    width: 600,
                  ),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                      child: Text(
                        data.nomGame + '  ★ ' + data.puntuacion.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    )),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Text(
                        data.descGame,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    border: TableBorder(
                        top: BorderSide(
                            color: Colors.deepPurpleAccent,
                            style: BorderStyle.solid),
                        verticalInside: BorderSide(
                            color: Colors.deepPurpleAccent,
                            style: BorderStyle.solid)),
                    children: [
                      TableRow(children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 50,
                              padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
                              child: Text(
                                data.playerGame,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            )),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                              child: Text(
                                ('Edad: ') + data.ageGame,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            )),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                              child: Text(
                                data.timeGame,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            )),
                      ])
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Donde encontrar el juego:',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  child: Container(
                    width: 380,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.white, spreadRadius: 1),
                      ],
                      image: DecorationImage(
                        image: AssetImage("assets/maps.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Reviews:',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )),
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
                      image: AssetImage(
                        "assets/" + data.photo,
                      ),
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
                                data.nomGame,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              Text(
                                'Virus me parece muy buen juego para jugarlo tanto en familia como con amigos, lo recomiendo.',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                              Text(
                                '                                                         Puntuación: ★' +
                                    data.puntuacion.toString(),
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
                )
              ],
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: FaIcon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Review(),
              ),
            );
          },
          backgroundColor: Colors.deepPurpleAccent),
    );
  }
}
