// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var imageArray = [
    'one.png',
    'two.png',
    'three.png',
    'four.png',
    'five.png',
    'six.png'
  ];
  //var random = new Random();
  int randomIntForDiceOne = Random().nextInt(6);
  //int randomIntForDiceTwo = Random().nextInt(6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(bottom: 60),
                /* child: Text(
                  'The sum is: ' +
                      (randomIntForDiceOne + randomIntForDiceTwo + 2)
                          .toString(),
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),*/
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'images/' + imageArray[randomIntForDiceOne],
                    height: 150,
                    width: 150,
                  ),
                  /*Image.asset(
                    'images/' + imageArray[randomIntForDiceTwo],
                    height: 150,
                    width: 150,
                  ),*/
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: RaisedButton(
                  onPressed: changeImage,
                  child: const Text('Roll Dice'),
                ),
              )
            ],
          ),
        ));
  }

  void changeImage() {
    setState(() {
      randomIntForDiceOne = Random().nextInt(6);
      // randomIntForDiceTwo = Random().nextInt(6);
    });
  }
}
