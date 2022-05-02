import 'package:flutter/material.dart';
import 'package:project_a/constants.dart';
import 'package:project_a/navigation/navbar.dart';

class MainView extends StatelessWidget {
  const MainView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
        backgroundColor: secondaryColor,
      ),
      drawer: const Navbar(),
    );
  }
}