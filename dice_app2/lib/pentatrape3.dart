// ignore_for_file: deprecated_member_use

import 'package:diceapp/dodecahedron.dart';
import 'package:diceapp/pentatrape.dart';
import 'package:diceapp/pentatrape2.dart';
import 'package:diceapp/pentatrape4.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'Tetrahedron.dart';
import 'Tetrahedron2.dart';
import 'Tetrahedron3.dart';
import 'Tetrahedron4.dart';
import 'cube.dart';
import 'cube2.dart';
import 'cube3.dart';
import 'cube4.dart';
import 'dodecahedron2.dart';
import 'dodecahedron3.dart';
import 'dodecahedron4.dart';
import 'icosahedron.dart';
import 'icosahedron2.dart';
import 'icosahedron3.dart';
import 'icosahedron4.dart';
import 'main.dart';
import 'octahedron.dart';
import 'octahedron2.dart';
import 'octahedron3.dart';
import 'octahedron4.dart';

class MyStatefulpentatrape3 extends StatefulWidget {
  const MyStatefulpentatrape3({Key? key}) : super(key: key);

  @override
  State<MyStatefulpentatrape3> createState() => _MyStatefulpentatrapeState3();
}

class _MyStatefulpentatrapeState3 extends State<MyStatefulpentatrape3> {
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

class Mypentatrape3 extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Mypentatrape3();

  @override
  _MypentatrapeState3 createState() => _MypentatrapeState3();
}

class _MypentatrapeState3 extends State<Mypentatrape3> {
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
  ];
  //var random = new Random();
  int randomIntForDiceOne = Random().nextInt(10);
  int randomIntForDiceTwo = Random().nextInt(10);
  int randomIntForDiceThree = Random().nextInt(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 61, 61, 61),
          title: const Text('Dicey / Pentagonal...'),
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
                        if (MyStatefulCubeState.number == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyTetra()),
                          );
                        }
                        if (MyStatefulCubeState.number == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyTetra2()),
                          );
                        }
                        if (MyStatefulCubeState.number == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyTetra3()),
                          );
                        }
                        if (MyStatefulCubeState.number == 4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyTetra4()),
                          );
                        }
                      }),
                ),
                PopupMenuItem(
                  child: ListTile(
                      leading: const Icon(Icons.view_in_ar),
                      title: const Text('Cube'),
                      iconColor: const Color.fromARGB(255, 0, 0, 0),
                      textColor: const Color.fromARGB(255, 0, 0, 0),
                      onTap: () {
                        if (MyStatefulCubeState.number == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyCube()),
                          );
                        }
                        if (MyStatefulCubeState.number == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyCube2()),
                          );
                        }
                        if (MyStatefulCubeState.number == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyCube3()),
                          );
                        }
                        if (MyStatefulCubeState.number == 4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyCube4()),
                          );
                        }
                      }),
                ),
                PopupMenuItem(
                  child: ListTile(
                      leading: const Icon(Icons.view_in_ar),
                      title: const Text('Octahedron'),
                      iconColor: const Color.fromARGB(255, 0, 0, 0),
                      textColor: const Color.fromARGB(255, 0, 0, 0),
                      onTap: () {
                        if (MyStatefulCubeState.number == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyOcta()),
                          );
                        }
                        if (MyStatefulCubeState.number == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyOcta2()),
                          );
                        }
                        if (MyStatefulCubeState.number == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyOcta3()),
                          );
                        }
                        if (MyStatefulCubeState.number == 4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyOcta4()),
                          );
                        }
                      }),
                ),
                PopupMenuItem(
                  child: ListTile(
                      leading: const Icon(Icons.view_in_ar),
                      title: const Text('Pentagonal trapezohedron'),
                      iconColor: const Color.fromARGB(255, 0, 0, 0),
                      textColor: const Color.fromARGB(255, 0, 0, 0),
                      onTap: () {
                        if (MyStatefulCubeState.number == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Mypentatrape()),
                          );
                        }
                        if (MyStatefulCubeState.number == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Mypentatrape2()),
                          );
                        }
                        if (MyStatefulCubeState.number == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Mypentatrape3()),
                          );
                        }
                        if (MyStatefulCubeState.number == 4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Mypentatrape4()),
                          );
                        }
                      }),
                ),
                PopupMenuItem(
                  child: ListTile(
                      leading: const Icon(Icons.view_in_ar),
                      title: const Text('Dodecahedron'),
                      iconColor: const Color.fromARGB(255, 0, 0, 0),
                      textColor: const Color.fromARGB(255, 0, 0, 0),
                      onTap: () {
                        if (MyStatefulCubeState.number == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyDodeca()),
                          );
                        }
                        if (MyStatefulCubeState.number == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyDodeca2()),
                          );
                        }
                        if (MyStatefulCubeState.number == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyDodeca3()),
                          );
                        }
                        if (MyStatefulCubeState.number == 4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyDodeca4()),
                          );
                        }
                      }),
                ),
                PopupMenuItem(
                  child: ListTile(
                      leading: const Icon(Icons.view_in_ar),
                      title: const Text('Icosahedron'),
                      iconColor: const Color.fromARGB(255, 0, 0, 0),
                      textColor: const Color.fromARGB(255, 0, 0, 0),
                      onTap: () {
                        if (MyStatefulCubeState.number == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyIcosa()),
                          );
                        }
                        if (MyStatefulCubeState.number == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyIcosa2()),
                          );
                        }
                        if (MyStatefulCubeState.number == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyIcosa3()),
                          );
                        }
                        if (MyStatefulCubeState.number == 4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyIcosa4()),
                          );
                        }
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
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Text(
                  'The sum is: ' +
                      (randomIntForDiceOne +
                              randomIntForDiceTwo +
                              randomIntForDiceThree +
                              3)
                          .toString(),
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'pentatrape/' + imageArray[randomIntForDiceOne],
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'pentatrape/' + imageArray[randomIntForDiceTwo],
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'pentatrape/' + imageArray[randomIntForDiceThree],
                    height: 100,
                    width: 100,
                  ),
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
      randomIntForDiceOne = Random().nextInt(10);
      randomIntForDiceTwo = Random().nextInt(10);
      randomIntForDiceThree = Random().nextInt(10);
    });
  }
}
