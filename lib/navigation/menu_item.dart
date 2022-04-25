// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String itemText;
  final String itemIcon;
  final int selected;
  final int position;

  const MenuItem(
      {Key? key,
      required this.itemText,
      required this.itemIcon,
      required this.selected,
      required this.position})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: selected == position ? const Color(0xffb151e26) : const Color(0xFFB1F2B36),
      child: Row(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              itemIcon,
              height: 24,
              width: 24,
            ),
            // child: Image.asset('assets/images/${menuIcons[index]}.png'),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              itemText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
