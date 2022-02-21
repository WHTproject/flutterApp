import 'package:flutter/material.dart';

class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({Key? key}) : super(key: key);
  final padding = const EdgeInsets.symmetric(horizontal:10.0);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.lightGreen,
        child: ListView(
          children:<Widget>[
            const SizedBox(height: 30),
            buildMenuItem(
              text: 'Tetrahedron',
              icon: Icons.view_in_ar,
            )
          ]

        )
      )
    );
  }
  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    final color = Colors. white;
    final hoverColor = Colors.grey;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color:color)),
      hoverColor: hoverColor,
      onTap: () {},

    );
  }
} 

  