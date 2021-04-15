import 'package:boardgames/pages/LogIn/login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsTwoPage extends StatelessWidget {
  static final String path = "lib/src/pages/settings/settings2.dart";
  final TextStyle whiteText = TextStyle(
    color: Colors.white,
  );
  final TextStyle greyTExt = TextStyle(
    color: Colors.grey.shade400,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 34, 34),
      body: Theme(
        data: Theme.of(context).copyWith(
          brightness: Brightness.dark,
          primaryColor: Colors.purple,
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30.0),
                Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png"),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Oriol Molina",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                ListTile(
                  leading: Icon(
                    Icons.language,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Idioma",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.solidMoon,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Dark Theme",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    FontAwesomeIcons.toggleOn,
                    color: Colors.white,
                    size: 40,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.infoCircle,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Información",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade600,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => LoginScreen()),
                        ModalRoute.withName('/'));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
