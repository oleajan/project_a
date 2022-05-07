import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_a/asset/assets_view.dart';
import 'package:project_a/constants.dart';
import 'package:project_a/dashboard/dashboard_view.dart';
import 'package:project_a/dashboard/dashboard_view_desktop.dart';
import 'package:project_a/main/main_view.dart';
import 'package:project_a/navigation/nav_item.dart';
import 'package:project_a/setting/settings_view.dart';
import 'package:project_a/transaction/transactions_view.dart';

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
                    size: 18,
                    color: Colors.white54,
                  ),
                  press: () {
                    // TODO Dashboard state
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const MainView())
                    );
                  },
                ),
                NavItem(
                  title: 'Transactions',
                  icon: const Icon(
                    FontAwesomeIcons.receipt,
                    size: 18,
                    color: Colors.white54,
                  ),
                  press: () {
                    // TODO Transactions state
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Transactions())
                    );
                  },
                ),
                NavItem(
                  title: 'Assets',
                  icon: const Icon(
                    FontAwesomeIcons.landmark,
                    size: 18,
                    color: Colors.white54,
                  ),
                  press: () {
                    // TODO Assets state
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Assets())
                    );
                  },
                ),
                NavItem(
                  title: 'Settings',
                  icon: const Icon(
                    FontAwesomeIcons.sliders,
                    size: 18,
                    color: Colors.white54,
                  ),
                  press: () {
                    // TODO Settings state
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Settings())
                    );
                  },
                ),
                const Divider()
              ],
            ),
          ),
          NavItem(
            title: 'Something',
            icon: const Icon(
              FontAwesomeIcons.user,
              size: 18,
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
