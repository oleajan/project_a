import 'package:flutter/material.dart';

class AdaptiveNavigation extends StatelessWidget {
  const AdaptiveNavigation({
    Key? key,
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.child,
  }) : super(key: key);

  final List<NavigationDestination> destinations;
  final int selectedIndex;
  final void Function(int index) onDestinationSelected;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        // Tablet
        if (dimens.maxWidth >= 600) {
          return Scaffold(
            body: Row(
              children: [
                Stack(
                  children: [
                    NavigationRail(
                      leading: Container(
                        // color: Colors.blue,
                        height: 120,
                        alignment: Alignment.center,
                        child: const Text('Sample Leading'),
                      ),
                      extended: dimens.maxWidth >= 800,
                      minExtendedWidth: 180,
                      destinations: destinations
                          .map((e) => NavigationRailDestination(
                                icon: e.icon,
                                label: Text(e.label),
                              ))
                          .toList(),
                      selectedIndex: selectedIndex,
                      onDestinationSelected: onDestinationSelected,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Colors.blue,
                        height: 100,
                      ),
                    ),
                  ],
                ),
                Expanded(child: child),
              ],
            ),
          );
        }
        // Mobile
        // TODO new transaction view back button
        // * figure out a way to have a back button
        // * using go_router
        return LayoutBuilder(
          builder: (context, dimens) {
            // Tablet
            if (dimens.maxWidth >= 600) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Scaffold(
                    body: Center(
                      child: Text('Tablet New Transaction View'),
                    ),
                  ),
                ),
              );
            }
            // Mobile
            return Scaffold(
              body: child,
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endFloat,
              floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Scaffold(
                        body: Center(
                          child: Text('Mobile New Transaction View'),
                        ),
                      ),
                    ),
                  );
                },
              ),
              bottomNavigationBar: NavigationBar(
                // height: 65,
                destinations: destinations,
                selectedIndex: selectedIndex,
                onDestinationSelected: onDestinationSelected,
              ),
            );
          },
        );
      },
    );
  }
}
