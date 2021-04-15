import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

import 'package:boardgames/pages/user/user.dart';
import 'package:boardgames/pages/notifications.dart';
import 'package:boardgames/pages/game.dart';
import 'package:boardgames/api/getRoutes.dart';
import 'package:boardgames/api/apiGame.dart';
import 'package:boardgames/pages/categories/cartas.dart';
import 'package:boardgames/pages/categories/dados.dart';
import 'package:boardgames/pages/categories/fichas.dart';
import 'package:boardgames/pages/categories/rol.dart';
import 'package:boardgames/pages/categories/tablero.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  TextEditingController textController = TextEditingController();
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    ListaGames(),
    UserPage(),
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                Color.fromARGB(255, 100, 56, 156),
                Colors.deepPurpleAccent
              ])),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      elevation: 40,
                      child: Image.asset(
                        'assets/logo.png',
                        width: 100,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text('Categorias',
                          style:
                              TextStyle(color: Colors.white, fontSize: 25.0)),
                    ),
                  ],
                ),
              ),
            ),
            CustomListTitle('Dados', 1, Dados()),
            CustomListTitle('Fichas', 2, Fichas()),
            CustomListTitle('Cartas', 3, Cartas()),
            CustomListTitle('Rol', 4, Rol()),
            CustomListTitle('Tablero', 5, Tablero()),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
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
            iconData: FontAwesomeIcons.solidUser,
            label: 'Usuario',
          ),
          FFNavigationBarItem(
            iconData: Icons.settings,
            label: 'Configuración',
          ),
        ],
      ),
    );
  }
}

class CustomListTitle extends StatelessWidget {
  String text;
  int id;
  Widget categoria;

  CustomListTitle(this.text, this.id, this.categoria);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
        child: Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey.shade400)),
            ),
            child: InkWell(
                splashColor: Colors.deepPurpleAccent,
                onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => categoria,
                        ),
                      )
                    },
                child: Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.label_important),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(text, style: TextStyle(fontSize: 20)),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                ))));
  }
}

class ListaGames extends StatefulWidget {
  @override
  _ListaGames createState() => _ListaGames();
}

class _ListaGames extends State<ListaGames> with TickerProviderStateMixin {
  List<ApiGame> data = List();
  List<ApiGame> dataNew = List();
  int newValue = 0;
  Api api = Api();

  Future _getGames() async {
    data = await api.getRoutes();
    setState(() {});
  }

  void _callback(int value) {
    newValue = value;
  }

  @override
  void initState() {
    super.initState();
    _getGames();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 34, 34),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              margin: EdgeInsets.only(top: 2),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.deepPurpleAccent, spreadRadius: 1),
                  ],
                  image: DecorationImage(
                    image: AssetImage("assets/" + data[index].photo),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 364,
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              data[index].nomGame,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              data[index].descGame,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Game(data[index]),
                              ),
                            );
                          },
                        ),
                        Text(''),
                        Text(''),
                        Text(
                          '★' + data[index].puntuacion.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
