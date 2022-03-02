import 'package:flutter/material.dart';
import 'package:diceapp/side_menu_widget.dart';

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
          title: const Text('Dicey / Menu'),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text("Play"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PlayRoute()),
                );
              },
            ),
            ElevatedButton(
              child: const Text("Options"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OptionsRoute()),
                );
              },
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
        title: const Text('Dicey / Play'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          PopupMenuButton(
            icon: const Icon(Icons.menu),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.view_in_ar),
                  title: Text('Tetrahedron'),
                  iconColor: Color.fromARGB(255, 0, 0, 0),
                  textColor: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.view_in_ar),
                  title: Text('Cube'),
                  iconColor: Color.fromARGB(255, 0, 0, 0),
                  textColor: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.view_in_ar),
                  title: Text('Octahedron'),
                  iconColor: Color.fromARGB(255, 0, 0, 0),
                  textColor: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.view_in_ar),
                  title: Text('Pentagonal trapezohedron'),
                  iconColor: Color.fromARGB(255, 0, 0, 0),
                  textColor: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.view_in_ar),
                  title: Text('Dodecahedron'),
                  iconColor: Color.fromARGB(255, 0, 0, 0),
                  textColor: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.view_in_ar),
                  title: Text('Icosahedron'),
                  iconColor: Color.fromARGB(255, 0, 0, 0),
                  textColor: Color.fromARGB(255, 0, 0, 0),
                ),
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
          ElevatedButton(
            onPressed: _openDrawer,
            child: const Text('Pick your dices!!!'),
            style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                fixedSize: const Size(150, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicey / Options'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Menu'),
        ),
      ),
    );
  }
}
