import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_a/constants.dart';

class Assets extends StatelessWidget {
  const Assets({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: const Text(
          'Assets',
          style: TextStyle(
            color: Colors.white
          ),
          ),
      ),
    );
  }
}