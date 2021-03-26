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
        // leading: (IconButton(
        //   icon: (FaIcon(
        //     Icons.arrow_back,
        //     size: 30,
        //     color: Colors.deepPurpleAccent,
        //   )),
        //   onPressed: () {},
        // )),
      ),
      body: new Stack(
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
                      data.nomGame,
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
                            color: Colors.white, style: BorderStyle.solid),
                        verticalInside: BorderSide(
                            color: Colors.white, style: BorderStyle.solid)),
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
                                data.timeGame,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            )),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                              child: Text(
                                data.ageGame,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            )),
                      ])
                    ],
                  )),
            ],
          ))
        ],
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
