import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          DrawerListTile(
            title: 'Dashboard',
            icon: const Icon(
              FontAwesomeIcons.house,
              size: 20,
              color: Colors.white54,
            ),
            press: () {
              // TODO
            },
          ),
          DrawerListTile(
            title: 'Transactions',
            icon: const Icon(
              FontAwesomeIcons.receipt,
              size: 20,
              color: Colors.white54,
            ),
            press: () {
              // TODO
            },
          ),
          DrawerListTile(
            title: 'Assets',
            icon: const Icon(
              FontAwesomeIcons.landmark,
              size: 20,
              color: Colors.white54,
            ),
            press: () {

            },
          ),
          DrawerListTile(
            title: 'Settings',
            icon: const Icon(
              FontAwesomeIcons.sliders,
              size: 20,
              color: Colors.white54,
            ),
            press: () {
              // TODO
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title;
  final Icon icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 2.0,
      leading: icon,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white54,
          fontSize: 18,
        ),
      ),
    );
  }
}
