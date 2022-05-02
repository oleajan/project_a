
import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  const NavItem({
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
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: ListTile(
        onTap: press,
        horizontalTitleGap: 2.0,
        leading: icon,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white54,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
