import 'package:flutter/material.dart';

class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({Key? key}) : super(key: key);
  final padding = const EdgeInsets.symmetric(horizontal: 10.0);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
            color: const Color.fromARGB(255, 255, 255, 255),
            child: ListView(children: <Widget>[
              const SizedBox(height: 30),
              buildMenuItemTetra(
                text: 'Catdicetrophe',
                icon: Icons.help,
              ),
            ])));
  }

  Widget buildMenuItemTetra({
    required String text,
    required IconData icon,
  }) {
    const color = Colors.black;
    const hoverColor = Colors.grey;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: () {},
    );
  }
}
