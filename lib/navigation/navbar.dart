import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_a/constants.dart';
import 'package:project_a/navigation/nav_item.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            height: 170,
            child: DrawerHeader(
              decoration: BoxDecoration(color: secondaryColor),
              child: Center(
                child: Text(
                  'Header',
                  style: TextStyle(color: Colors.white54, fontSize: 40),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                NavItem(
                  title: 'Dashboard',
                  icon: const Icon(
                    FontAwesomeIcons.house,
                    size: 20,
                    color: Colors.white54,
                  ),
                  press: () {
                    // TODO Dashboard state
                  },
                ),
                NavItem(
                  title: 'Transactions',
                  icon: const Icon(
                    FontAwesomeIcons.receipt,
                    size: 20,
                    color: Colors.white54,
                  ),
                  press: () {
                    // TODO Transactions state
                  },
                ),
                NavItem(
                  title: 'Assets',
                  icon: const Icon(
                    FontAwesomeIcons.landmark,
                    size: 20,
                    color: Colors.white54,
                  ),
                  press: () {
                    // TODO Assets state
                  },
                ),
                NavItem(
                  title: 'Settings',
                  icon: const Icon(
                    FontAwesomeIcons.sliders,
                    size: 20,
                    color: Colors.white54,
                  ),
                  press: () {
                    // TODO Settings state
                  },
                ),
              ],
            ),
          ),
          NavItem(
            title: 'Something',
            icon: const Icon(
              FontAwesomeIcons.user,
              size: 20,
              color: Colors.white54,
            ),
            press: () {
              // TODO Bottom NavItem
            },
          ),
        ],
      ),
    );
  }
}
