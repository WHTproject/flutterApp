import 'package:diceapp/octahedron.dart';
import 'package:diceapp/pentatrape.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'Tetrahedron.dart';
import 'dodecahedron.dart';
import 'icosahedron.dart';
import 'main.dart';

class MyStatefulCube extends StatefulWidget {
  const MyStatefulCube({Key? key}) : super(key: key);

  @override
  State<MyStatefulCube> createState() => _MyStatefulCubeState();
}

class _MyStatefulCubeState extends State<MyStatefulCube> {
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

class MyCube extends StatefulWidget {
  MyCube();

  @override
  _MyCubeState createState() => _MyCubeState();
}

class _MyCubeState extends State<MyCube> {
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
        appBar: AppBar(
          title: const Text('Dicey / Cube'),
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
                    'cube/' + imageArray[randomIntForDiceOne],
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
      randomIntForDiceOne = Random().nextInt(6);
      // randomIntForDiceTwo = Random().nextInt(6);
    });
  }
}
