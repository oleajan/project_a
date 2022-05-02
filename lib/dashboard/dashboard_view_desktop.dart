import 'package:flutter/material.dart';

class DashboardViewDesktop extends StatelessWidget {
  const DashboardViewDesktop({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        title: const Text('D E S K T O P / T A B L E T'),
      ),
    );
  }
}