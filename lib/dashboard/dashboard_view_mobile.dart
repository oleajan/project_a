import 'package:flutter/material.dart';

class DashboardViewMobile extends StatelessWidget {
  const DashboardViewMobile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text('M O B I L E'),
      ),
    );
  }
}