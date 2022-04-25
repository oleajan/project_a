// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

import 'navigation/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Nunito",
      ),
      home: Scaffold(
        body: Container(
          color: const Color(0xFFB1F2B36),
          child: const Navbar(),
        ),
      ),
    );
  }
}