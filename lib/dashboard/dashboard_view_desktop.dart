import 'package:flutter/material.dart';
import 'package:project_a/constants.dart';
import 'package:project_a/navigation/navbar.dart';

class DashboardViewDesktop extends StatefulWidget {
  const DashboardViewDesktop({Key? key}) : super(key: key);

  @override
  State<DashboardViewDesktop> createState() => _DashboardViewDesktopState();
}

class _DashboardViewDesktopState extends State<DashboardViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(),
      appBar: AppBar(
        title: const Text('D E S K T O P'),
        backgroundColor: secondaryColor,
        toolbarHeight: 80,
      ),
      body: Row(
        children: [
          // * 1st column
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    constraints: const BoxConstraints(
                      minHeight: 150,
                      maxHeight: 500,
                      minWidth: 100,
                      maxWidth: double.infinity,
                    ),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      // TODO card with graphs here
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[400],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          top: 8,
                          right: 16,
                          bottom: 8,
                        ),
                        child: Container(
                          // TODO card for transactions here
                          child: Container(
                            color: Colors.deepPurple[300],
                          ),
                          color: Colors.deepPurple[300],
                          height: 120,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          // * 2nd Column
          // TODO DASHBOARD RIGHT SIDEBAR
          Container(
            width: 400,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 10),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
