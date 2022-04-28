// ignore_for_file: deprecated_member_use

import 'package:diceapp/Tetrahedron.dart';
import 'package:diceapp/Tetrahedron2.dart';
import 'package:diceapp/cube2.dart';
import 'package:diceapp/helpmenuwidget.dart';
import 'package:diceapp/octahedron.dart';
import 'package:diceapp/pentatrape.dart';
import 'package:diceapp/pentatrape2.dart';
import 'package:diceapp/pentatrape3.dart';
import 'package:diceapp/pentatrape4.dart';
import 'package:flutter/material.dart';
import 'package:diceapp/side_menu_widget.dart';
//import 'dart:math';

import 'Tetrahedron3.dart';
import 'Tetrahedron4.dart';
import 'cube.dart';
import 'cube3.dart';
import 'cube4.dart';
import 'dodecahedron.dart';
import 'dodecahedron2.dart';
import 'dodecahedron3.dart';
import 'dodecahedron4.dart';
import 'icosahedron.dart';
import 'icosahedron2.dart';
import 'icosahedron3.dart';
import 'icosahedron4.dart';
import 'octahedron2.dart';
import 'octahedron3.dart';
import 'octahedron4.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Dicey',
    home: MenuRoute(),
  ));
}

class MenuRoute extends StatelessWidget {
  const MenuRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 61, 61, 61),
          title: const Text('Dicey / Menu'),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HelpMenuWidget()),
                  );
                },
                child: const Icon(
                  Icons.help,
                  size: 26.0,
                ),
              ),
            ),
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('cube/six.png'),
            //Image size needs to be adjusted

            ElevatedButton(
              child: const Text("Play"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PlayRoute()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 61, 61, 61),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            ElevatedButton(
              child: const Text("Options"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OptionsRoute()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 61, 61, 61),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)),
            ),
          ],
        )));
  }
}

class PlayRoute extends StatefulWidget {
  const PlayRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PlayRouteState();
  }
}

class PlayRouteState extends State<PlayRoute> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  //void _closeDrawer() {
  //   Navigator.of(context).pop();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 61, 61),
        title: const Text('Dicey / Play'),
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
      drawer: const Drawer(
        child: SideMenuWidget(),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Choose your dice',
            style: TextStyle(height: 10, fontSize: 15),
          ),
          /*ElevatedButton(
            onPressed: _openDrawer,
            child: const Text('Pick your dices!!!'),
            style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                fixedSize: const Size(150, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
          ),*/

          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 61, 61, 61),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            child: const Text('Menu'),
          ),
        ]),
      ),
    );
  }
}

class OptionsRoute extends StatelessWidget {
  const OptionsRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 61, 61),
        title: const Text('Dicey / Options'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('Choose your dice count'),
            const MyStatefulCube(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuRoute()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 61, 61, 61),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)),
              child: const Text('Menu'),
            ),
          ],
        ),
      ),
    );
  }
}
