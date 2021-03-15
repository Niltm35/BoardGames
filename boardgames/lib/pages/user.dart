import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: profile());
  }

  Widget profile() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  "https://st.depositphotos.com/1537427/4595/v/950/depositphotos_45955611-stock-illustration-seamless-dices-background.jpg"),
              fit: BoxFit.cover,
            )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height / 1.4,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 64, 64, 63),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: height / 18,
            child: Column(
              children: <Widget>[
                Container(
                  height: height / 5,
                  width: height / 5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png"),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                          offset: Offset(0, 1),
                        )
                      ],
                      color: Colors.white,
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'Pringao Molina',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'OpenSans',
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'Programmer',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    child: Text(
                  'Welcome to the page of Oriol Molina',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      height: height / 16,
                      width: width / 4,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: Colors.deepPurple,
                        onPressed: () {},
                        child: Text(
                          'Contact',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: width / 4,
                      height: height / 16.5,
                      child: OutlineButton(
                        borderSide:
                            BorderSide(color: Colors.deepPurple, width: 2.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        onPressed: () {},
                        child: Text('Message'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
