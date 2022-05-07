import 'package:flutter/material.dart';
import 'package:project_a/constants.dart';
import 'package:project_a/responsive/responsive_layout.dart';

import 'assets_view_desktop.dart';
import 'assets_view_mobile.dart';

// class Assets extends StatelessWidget {
//   const Assets({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: secondaryColor,
//         title: const Text(
//           'Assets',
//           style: TextStyle(
//             color: Colors.white
//           ),
//           ),
//       ),
//     );
//   }
// }

class Assets extends StatelessWidget {
  const Assets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: AssetsViewMobile(),
        desktopBody: AssetsViewDesktop(),
      ),
    );
  }
}
