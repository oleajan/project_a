// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_a/navigation/navigation_state.dart';

import 'navigation/navbar.dart';
import 'navigation/navigation_block.dart';

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
      home: BlocProvider(
        create: (context) => NavigationBloc(NavigationStateDashboard()),
        child: Scaffold(
          body: Container(
            color: const Color(0xFFB1F2B36),
            child: const Navbar(),
          ),
        ),
      ),
    );
  }
}
