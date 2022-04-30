import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_a/constants.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({ Key? key }) : super(key: key);

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
                // TODO
              },
            );
          },
        ),
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: secondaryColor
          ),
          ),
      ),
    );
  }
}