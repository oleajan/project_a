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
        return Scaffold(
          body: Row(
            children: [
              Stack(
                children: [
                  NavigationRail(
                    leading: Container(
                      // color: Colors.blue,
                      height: 140,
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
      },
    );
  }
}
