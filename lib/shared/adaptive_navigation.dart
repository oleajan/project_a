import 'package:flutter/material.dart';

class AdaptiveNavigation extends StatelessWidget {
  final List<NavigationDestination> destinations;
  final int selectedIndex;
  final void Function(int index) onDestinationSelected;
  final Widget child;

  const AdaptiveNavigation({
    Key? key,
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        return Scaffold(
          body: Row(
            children: [
              NavigationRail(
                extended: dimens.maxWidth >= 800,
                minExtendedWidth: 180,
                destinations: destinations
                    .map((e) => NavigationRailDestination(
                          icon: e.icon,
                          label: Text(e.label),
                        ))
                    .toList(),
                selectedIndex: selectedIndex,
              ),
              Expanded(child: child),
            ],
          ),
        );
      },
    );
  }
}
