import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

import 'pages/home.dart';

const users = const {
  'root@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
  'm@gmail.com': '12345',
};

class LoginScreen extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'Usuario no valido';
      }
      if (users[data.name] != data.password) {
        return 'La contraseña no coincide';
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Usuario no valido';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'BoardGames',
      logo: 'assets/logo.png',
      onLogin: _authUser,
      onSignup: _authUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Home(),
        ));
      },
      onRecoverPassword: _recoverPassword,
      theme: LoginTheme(
        primaryColor: Color.fromARGB(255, 19, 19, 19),
        accentColor: Colors.white,
        errorColor: Colors.deepPurpleAccent,
        titleStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}
