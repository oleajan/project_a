import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_a/constants.dart';

class Settings extends StatelessWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                FontAwesomeIcons.bars,
                color: secondaryColor,
              ),
              onPressed: () {
                // TODO Settings view layout
              },
            );
          },
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: secondaryColor
          ),
          ),
      ),
    );
  }
}