import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Tablero extends StatelessWidget {
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
          'TABLERO',
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
                  image: AssetImage("assets/monopoly.jpg"),
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
                            'Monopoly City (2009)',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Compra propiedades, intercambia conjuntos, construye casas y deja fuera del juego a todos los demás.',
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
                  image: AssetImage("assets/catan.jpg"),
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
                            'Catan (1995)',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Recolecta e intercambia recursos para construir la isla de Catán en este clásico moderno.',
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
                        '★7',
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
                  image: AssetImage("assets/codigoduo.jpg"),
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
                            'Codigo Secreto Duo (2017)',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Intercambie pistas codificadas de una palabra con su compañero, tratando de identificar tarjetas.',
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
                        '★7',
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
                  image: AssetImage("assets/catanduel.jpg"),
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
                            'Catan el Duelo (2010)',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Duelo para construir el mejor reino en diferentes épocas de Catán.',
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
                  image: AssetImage("assets/sw1.jpg"),
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
                            'Risk: Star Wars Edition (2015)',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'El Imperio y la Rebelión se enfrentan en tres teatros de guerra.',
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
                  image: AssetImage("assets/7wondersduel.jpg"),
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
                            '7 Wonders Duel (2015)',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '¿Ciencias? ¿Militar? ¿Qué redactarás para ganar esta versión cara a cara de 7 Wonders?',
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
                  image: AssetImage("assets/trivialpursuit.jpg"),
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
                            'Trivial Pursuit (1981)',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Demuestra que eres el maestro de todas las trivialidades moviéndote para recolectar quesitos.',
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
          ),
        ],
      ),
    );
  }
}
