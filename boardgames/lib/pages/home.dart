import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:animate_do/animate_do.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:expansion_card/expansion_card.dart';

import 'package:boardgames/pages/user.dart';
import 'package:boardgames/pages/notifications.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  TextEditingController textController = TextEditingController();
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Notifications'),
    MyHomePage(),
    SettingsTwoPage(),
  ];

  void _OnItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 26, 26),
        centerTitle: true,
        leading: (IconButton(
          icon: FadeInRight(
              delay: Duration(milliseconds: 700),
              child: FaIcon(
                Icons.menu,
                size: 30,
                color: Colors.deepPurpleAccent,
              )),
          onPressed: () {
            Navigator.push(context,
                CupertinoPageRoute(builder: (BuildContext context) => Home()));
          },
        )),
        title: Text(
          'BOARDGAMES',
          style: TextStyle(color: Colors.deepPurpleAccent),
        ),
        actions: <Widget>[
          AnimSearchBar(
            width: 400,
            textController: textController,
            onSuffixTap: () {
              setState(() {
                textController.clear();
              });
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Card1(),
          Card2(),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 40, 34, 34),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Color.fromARGB(255, 26, 26, 26),
          selectedItemBorderColor: Colors.deepPurpleAccent,
          selectedItemBackgroundColor: Colors.deepPurpleAccent,
          selectedItemIconColor: Color.fromARGB(255, 26, 26, 26),
          selectedItemLabelColor: Colors.deepPurpleAccent,
        ),
        selectedIndex: _selectedIndex,
        onSelectTab: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: Icons.notifications,
            label: 'Notifications',
          ),
          FFNavigationBarItem(
            iconData: FontAwesomeIcons.solidUser,
            label: 'User',
          ),
          FFNavigationBarItem(
            iconData: Icons.settings,
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

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
                "Keep your body safe from viruses while infecting your rivals.",
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
                "Buy properties, trade for sets, build houses, and run everyone else out of the game.",
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
