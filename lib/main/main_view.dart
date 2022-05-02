import 'package:flutter/material.dart';
import 'package:project_a/constants.dart';
import 'package:project_a/dashboard/dashboard_view_desktop.dart';
import 'package:project_a/navigation/navbar.dart';
import 'package:project_a/responsive/responsive_layout.dart';

import '../dashboard/dashboard_view_mobile.dart';

// * BEFORE
// class MainView extends StatelessWidget {
//   const MainView({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test'),
//         backgroundColor: secondaryColor,
//       ),
//       drawer: const Navbar(),
//     );
//   }
// }

// * AFTER
class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: DashboardViewMobile(),
        desktopBody: DashboardViewDesktop(),
      ),
    );
  }
}
