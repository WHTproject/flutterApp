import 'package:flutter/material.dart';

import 'main.dart';

class HelpMenuWidget extends StatelessWidget {
  const HelpMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 61, 61),
        title: const Text('Dicey / Help'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.menu,
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Spacer(),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'You can choose your dice by pressing the top right Menu ',
                textAlign: TextAlign.center,
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Icon to select a dice from 6 available dice',
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 61, 61, 61),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)),
              child: const Text('Menu'),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'You can choose the amount of',
                textAlign: TextAlign.center,
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'dices to throw from the options menu',
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OptionsRoute()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 61, 61, 61),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)),
              child: const Text('Options'),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
