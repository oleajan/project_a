
import 'package:flutter/material.dart';

import 'menu_item.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final List<String> menuItems = [
    'Dashboard',
    'Assets',
    'Expenses',
    'Settings'
  ];
  final List<String> menuIcons = [
    'assets/images/assets.png',
    'assets/images/assets.png',
    'assets/images/expenses.png',
    'assets/images/expenses.png',
  ];

  bool sidebarOpen = true;

  double xOffset = 265;
  double yOffset = 0;

  void setSidebarState() {
    setState(() {
      xOffset = sidebarOpen ? 265 : 60;
    });
  }

  int selectedMenuItem = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 24),
                // ignore: use_full_hex_values_for_flutter_colors
                color: const Color(0xFFB1F2B36),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      child: const Text('LG')
                      // child: Image.asset('assets/images/${menuIcons[index]}.png'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'LOGO HERE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      sidebarOpen = true;
                      selectedMenuItem = index;
                      setSidebarState();
                    },
                    child: MenuItem(
                      itemIcon: menuIcons[index],
                      itemText: menuItems[index],
                      selected: selectedMenuItem,
                      position: index,
                    ),
                  ),
                ),
              ),
              MenuItem(
                itemIcon: menuIcons[1],
                itemText: 'Logout',
                selected: selectedMenuItem,
                position: menuItems.length,
              ),
            ],
          ),
        ),
        AnimatedContainer(
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 130),
          transform: Matrix4.translationValues(xOffset, yOffset, 1.0),
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  height: 60,
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          sidebarOpen = !sidebarOpen;
                          setSidebarState();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          child: const Icon(Icons.menu),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
