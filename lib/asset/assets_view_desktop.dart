import 'package:flutter/material.dart';
import 'package:project_a/constants.dart';

class AssetsViewDesktop extends StatefulWidget {
  const AssetsViewDesktop({ Key? key }) : super(key: key);

  @override
  State<AssetsViewDesktop> createState() => _AssetsViewDesktopState();
}

class _AssetsViewDesktopState extends State<AssetsViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assets'),
        backgroundColor: secondaryColor,
        toolbarHeight: 80,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: secondaryColor,
        onPressed: () {},
      ),
    );
  }
}