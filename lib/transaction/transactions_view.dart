import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_a/constants.dart';

class Transactions extends StatelessWidget {
  const Transactions({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: const Text(
          'Transactions',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}