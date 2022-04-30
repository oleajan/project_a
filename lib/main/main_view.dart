import 'package:flutter/material.dart';
import 'package:project_a/dashboard/dashboard_view.dart';
import 'package:project_a/main/menu_controller.dart';
import 'package:project_a/navigation/navbar.dart';
import 'package:project_a/responsive.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: const Navbar(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Navbar only of large screens
            if (Responsive.isDesktop(context))
              const Expanded(
                child: Navbar(),
              ),
            const Expanded(
              flex: 5,
              child: Dashboard(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
      ),
    );
  }
}
