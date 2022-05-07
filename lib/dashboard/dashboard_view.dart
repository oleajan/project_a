import 'package:flutter/material.dart';

import '../responsive/responsive_layout.dart';
import 'dashboard_view_desktop.dart';
import 'dashboard_view_mobile.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({ Key? key }) : super(key: key);

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