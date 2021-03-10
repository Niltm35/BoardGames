import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'cardmod.dart';

import 'package:boardgames/pages/game.dart';

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ExpansionCard(
        borderRadius: 20,
        background: Image.asset("assets/virus.jpg", fit: BoxFit.cover),
        title: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "VIRUS! (2015)",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              Text(
                "Mantén tu cuerpo a salvo de virus mientras infecta a tus rivales.",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
        ),
        children: <Widget>[
          Container(
            child: Game(),
          )
        ],
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ExpansionCard(
        borderRadius: 20,
        background: Image.asset("assets/monopoly.jpg", fit: BoxFit.cover),
        title: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Monopoly City (2009)",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              Text(
                "Compra propiedades, intercambia conjuntos, construye casas y deja fuera del juego a todos los demás.",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
        ),
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7),
            child: Text("Content goes over here !",
                style: TextStyle(fontSize: 15, color: Colors.white)),
          )
        ],
      ),
    );
  }
}

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ExpansionCard(
        borderRadius: 20,
        background: Image.asset("assets/catan.jpg", fit: BoxFit.cover),
        title: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Catán (1995)",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              Text(
                "Recolecta e intercambia recursos para construir la isla de Catán en este clásico moderno.",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
        ),
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7),
            child: Text("Content goes over here !",
                style: TextStyle(fontSize: 15, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
