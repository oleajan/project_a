import 'package:flutter/material.dart';
import 'package:project_a/constants.dart';
import 'package:project_a/navigation/navbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      drawer: const Navbar(),
    );
  }
}