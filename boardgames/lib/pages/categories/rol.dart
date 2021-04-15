import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Rol extends StatelessWidget {
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
          'ROL',
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
                  image: AssetImage("assets/dd.jpg"),
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
                            'Dungeons & Dragons (2004)',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'El mago loco Halaster Capa negra acecha en las profundidades de la Submontaña infestada de monstruos.',
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
        ],
      ),
    );
  }
}
