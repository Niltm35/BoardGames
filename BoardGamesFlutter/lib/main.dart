import 'package:flutter/material.dart';
import 'package:flutterapp/boardgamesapp/generatedloginwidget/GeneratedLoginWidget.dart';
import 'package:flutterapp/boardgamesapp/generatedpaginaprincipalwidget/GeneratedPaginaPrincipalWidget.dart';
import 'package:flutterapp/boardgamesapp/generatedopcionswidget/GeneratedOpcionsWidget.dart';
import 'package:flutterapp/boardgamesapp/generatedsettingswidget/GeneratedSettingsWidget.dart';
import 'package:flutterapp/boardgamesapp/generateduserpagewidget/GeneratedUserPageWidget.dart';
import 'package:flutterapp/boardgamesapp/generatednotificationswidget1/GeneratedNotificationsWidget1.dart';
import 'package:flutterapp/boardgamesapp/generatedreviewwidget/GeneratedReviewWidget.dart';
import 'package:flutterapp/boardgamesapp/generatedreviewpublicadawidget/GeneratedReviewPublicadaWidget.dart';
import 'package:flutterapp/boardgamesapp/generatedsearchwidget/GeneratedSearchWidget.dart';
import 'package:flutterapp/boardgamesapp/generatedgamewidget/GeneratedGameWidget.dart';

void main() {
  runApp(BoardGamesApp());
}

class BoardGamesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedLoginWidget',
      routes: {
        '/GeneratedLoginWidget': (context) => GeneratedLoginWidget(),
        '/GeneratedPaginaPrincipalWidget': (context) => GeneratedPaginaPrincipalWidget(),
        '/GeneratedOpcionsWidget': (context) => GeneratedOpcionsWidget(),
        '/GeneratedSettingsWidget': (context) => GeneratedSettingsWidget(),
        '/GeneratedUserPageWidget': (context) => GeneratedUserPageWidget(),
        '/GeneratedNotificationsWidget1': (context) => GeneratedNotificationsWidget1(),
        '/GeneratedReviewWidget': (context) => GeneratedReviewWidget(),
        '/GeneratedReviewPublicadaWidget': (context) => GeneratedReviewPublicadaWidget(),
        '/GeneratedSearchWidget': (context) => GeneratedSearchWidget(),
        '/GeneratedGameWidget': (context) => GeneratedGameWidget(),
      },
    );
  }
}
