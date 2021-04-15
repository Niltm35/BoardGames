import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

import 'package:boardgames/pages/home.dart';

class Review extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Review> {
  int _rating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 26, 26),
        centerTitle: true,
      ),
      body: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Review",
          home: Material(
            child: Expanded(
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0, horizontal: 20.0),
                    color: Color.fromARGB(255, 40, 34, 34),
                    child: Container(
                        child: Column(children: [
                      Padding(padding: EdgeInsets.only(top: 50.0, bottom: 0.0)),
                      Text(
                        'VIRUS! (2015)',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20.0)),
                      Expanded(
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 60, 54, 54),
                            filled: true,
                            labelText: "Escribe tu opinión",
                            labelStyle: TextStyle(
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                          ),
                          validator: (val) {
                            if (val.length == 0) {
                              return "Email cannot be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.multiline,
                          maxLines: 12,
                          // style: TextStyle(
                          //   fontFamily: "Poppins",
                          // ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: new EdgeInsets.fromLTRB(45, 15, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Rating((rating) {
                                setState(() {
                                  _rating = rating;
                                });
                              }, 10),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: SizedBox(
                                    height: 30,
                                    width: 25,
                                    child: (_rating != null && _rating != 0)
                                        ? Text("$_rating",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white))
                                        : SizedBox.shrink()),
                              ),
                              RaisedButton(
                                child: Text('Guardar'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ])))),
          )),
    );
  }
}

class Rating extends StatefulWidget {
  final int maximumRating;
  final Function(int) onRatingSelected;

  Rating(this.onRatingSelected, [this.maximumRating = 10]);

  @override
  _Rating createState() => _Rating();
}

class _Rating extends State<Rating> {
  int _currentRating = 5;

  Widget _buildRatingStar(int index) {
    if (index < _currentRating) {
      return Icon(Icons.star, size: 30.0, color: Colors.white);
    } else {
      return Icon(Icons.star_border_outlined, size: 30.0, color: Colors.white);
    }
  }

  Widget _buildBody() {
    final stars = List<Widget>.generate(this.widget.maximumRating, (index) {
      return GestureDetector(
        child: _buildRatingStar(index),
        onTap: () {
          setState(() {
            _currentRating = index + 1;
          });

          this.widget.onRatingSelected(_currentRating);
        },
      );
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: stars,
        ),
        // FlatButton(
        //   child: Text("Clear", style: TextStyle(color: Colors.blue)),
        //   onPressed: () {
        //     setState(() {
        //       _currentRating = 0;
        //     });
        //     this.widget.onRatingSelected(_currentRating);
        //   },
        // )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}
