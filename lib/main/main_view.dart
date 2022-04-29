import 'package:flutter/material.dart';
import 'package:project_a/dashboard/dashboard_view.dart';
import 'package:project_a/main/menu_controller.dart';
import 'package:project_a/navigation/navbar.dart';
import 'package:project_a/responsive.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: Navbar(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: Navbar(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: Dashboard(),
            ),
          ],
        ),
      ),
    );
  }
}