import 'package:diceapp/pentatrape.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'Tetrahedron.dart';
import 'cube.dart';
import 'dodecahedron.dart';
import 'main.dart';
import 'octahedron.dart';

class MyStatefulIcosa extends StatefulWidget {
  const MyStatefulIcosa({Key? key}) : super(key: key);

  @override
  State<MyStatefulIcosa> createState() => _MyStatefulIcosaState();
}

class _MyStatefulIcosaState extends State<MyStatefulIcosa> {
  double _currentSliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      min: 1,
      max: 4,
      divisions: 4,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}

class MyIcosa extends StatefulWidget {
  MyIcosa();

  @override
  _MyIcosaState createState() => _MyIcosaState();
}

class _MyIcosaState extends State<MyIcosa> {
  var imageArray = [
    'one.png',
    'two.png',
    'three.png',
    'four.png',
    'five.png',
    'six.png',
    'seven.png',
    'eight.png',
    'nine.png',
    'ten.png',
    'eleven.png',
    'twelve.png',
    'thirteen.png',
    'fourteen.png',
    'fifteen.png',
    'sixteen.png',
    'seventeen.png',
    'eighteen.png',
    'nineteen.png',
    'twenty.png',
  ];
  //var random = new Random();
  int randomIntForDiceOne = Random().nextInt(20);
  //int randomIntForDiceTwo = Random().nextInt(6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dicey / Icosa'),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            PopupMenuButton(
              icon: const Icon(Icons.menu),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                  child: ListTile(
                      leading: const Icon(Icons.view_in_ar),
                      title: const Text('Tetrahedron'),
                      iconColor: const Color.fromARGB(255, 0, 0, 0),
                      textColor: const Color.fromARGB(255, 0, 0, 0),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyTetra()),
                        );
                      }),
                ),
                PopupMenuItem(
                  child: ListTile(
                      leading: const Icon(Icons.view_in_ar),
                      title: const Text('Cube'),
                      iconColor: const Color.fromARGB(255, 0, 0, 0),
                      textColor: const Color.fromARGB(255, 0, 0, 0),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyCube()),
                        );
                      }),
                ),
                PopupMenuItem(
                  child: ListTile(
                      leading: const Icon(Icons.view_in_ar),
                      title: const Text('Octahedron'),
                      iconColor: const Color.fromARGB(255, 0, 0, 0),
                      textColor: const Color.fromARGB(255, 0, 0, 0),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyOcta()),
                        );
                      }),
                ),
                PopupMenuItem(
                  child: ListTile(
                      leading: const Icon(Icons.view_in_ar),
                      title: const Text('Pentagonal trapezohedron'),
                      iconColor: const Color.fromARGB(255, 0, 0, 0),
                      textColor: const Color.fromARGB(255, 0, 0, 0),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Mypentatrape()),
                        );
                      }),
                ),
                PopupMenuItem(
                  child: ListTile(
                      leading: const Icon(Icons.view_in_ar),
                      title: const Text('Dodecahedron'),
                      iconColor: const Color.fromARGB(255, 0, 0, 0),
                      textColor: const Color.fromARGB(255, 0, 0, 0),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyDodeca()),
                        );
                      }),
                ),
                PopupMenuItem(
                  child: ListTile(
                      leading: const Icon(Icons.view_in_ar),
                      title: const Text('Icosahedron'),
                      iconColor: const Color.fromARGB(255, 0, 0, 0),
                      textColor: const Color.fromARGB(255, 0, 0, 0),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyIcosa()),
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    'icosahedron/' + imageArray[randomIntForDiceOne],
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
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MenuRoute()),
                    );
                  },
                  child: const Text('Menu'),
                ),
              )
            ],
          ),
        ));
  }

  void changeImage() {
    setState(() {
      randomIntForDiceOne = Random().nextInt(20);
      // randomIntForDiceTwo = Random().nextInt(6);
    });
  }
}
