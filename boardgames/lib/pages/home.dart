import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:boardgames/pages/user.dart';
import 'package:boardgames/pages/notifications.dart';
import 'package:animate_do/animate_do.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    MyHomePage(),
    SettingsTwoPage(),
    Text('Settings'),
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
        backgroundColor: Color.fromARGB(255, 40, 34, 34),
        centerTitle: true,
        leading: (IconButton(
          icon: FadeInRight(
              delay: Duration(milliseconds: 700),
              child: FaIcon(FontAwesomeIcons.gripLines)),
          onPressed: () {
            Navigator.push(context,
                CupertinoPageRoute(builder: (BuildContext context) => Home()));
          },
        )),
        title: Text(
          'HOME PAGE',
          style: TextStyle(color: Colors.white),
        ),
        bottom: PreferredSize(
            child: Container(
              color: Colors.white,
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      backgroundColor: Color.fromARGB(255, 40, 34, 34),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              title: Text('Home'),
              icon: FaIcon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
              backgroundColor: Color.fromARGB(255, 26, 26, 26)),
          BottomNavigationBarItem(
              title: Text('Notifications'),
              icon: FaIcon(Icons.notifications, size: 30, color: Colors.white)),
          BottomNavigationBarItem(
              title: Text('User'),
              icon: FaIcon(FontAwesomeIcons.solidUser, color: Colors.white)),
          BottomNavigationBarItem(
              title: Text('Settings'),
              icon: FaIcon(Icons.settings, size: 30, color: Colors.white)),
        ],
        currentIndex: _selectedIndex,
        onTap: _OnItemTap,
      ),
    );
  }
}
