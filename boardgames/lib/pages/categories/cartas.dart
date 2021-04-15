import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cartas extends StatelessWidget {
  TextEditingController textController = TextEditingController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 34, 34),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 26, 26),
        centerTitle: true,
        title: Text(
          'CARTAS',
          style: TextStyle(color: Colors.deepPurpleAccent),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 2),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.deepPurpleAccent, spreadRadius: 1),
                ],
                image: DecorationImage(
                  image: AssetImage("assets/virus.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 343,
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'VIRUS! (2015)',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Mantén tu cuerpo a salvo de virus mientras infectas a tus rivales.',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      Text(''),
                      Text(''),
                      Text(
                        '★8',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.deepPurpleAccent, spreadRadius: 1),
                ],
                image: DecorationImage(
                  image: AssetImage("assets/uno.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 343,
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'UNO (1971)',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Deshágase de sus tarjetas primero, pero no olvide decir UNO!',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      Text(''),
                      Text(''),
                      Text(
                        '★9',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.deepPurpleAccent, spreadRadius: 1),
                ],
                image: DecorationImage(
                  image: AssetImage("assets/bangduelo.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 343,
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'BANG! El Duelo (2015)',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Ganará el bando que tenga al menos un pistolero en pie cuando todos los pistoleros del opononente estén muertos.',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      Text(''),
                      Text(''),
                      Text(
                        '★6',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
