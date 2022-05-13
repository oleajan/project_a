import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_a/shared/adaptive_navigation.dart';

import './router.dart' as router;
import 'package:go_router/go_router.dart' as go;

class RootLayout extends StatelessWidget {
  const RootLayout({
    Key? key,
    required this.child,
    required this.currentIndex,
  }) : super(key: key);

  final Widget child;
  final int currentIndex;
  static const _switcherKey = ValueKey('switcherKey');
  static const _navigationRailKey = ValueKey('navigationRailKey');

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        void onSelected(int index) {
          final destination = router.destinations[index];
          go.GoRouter.of(context).go(destination.route);
        }

        return AdaptiveNavigation(
          key: _navigationRailKey,
          destinations: router.destinations
              .map((e) => NavigationDestination(
                    icon: e.icon,
                    label: e.label,
                  ))
              .toList(),
          selectedIndex: currentIndex,
          onDestinationSelected: onSelected,
          child: Column(
            children: [
              Expanded(
                child: _Switcher(
                  key: _switcherKey,
                  child: child,
                ),
              ),
              // if (current != null) const BottomBar(),
            ],
          ),
        );
      },
    );
  }
}

class _Switcher extends StatelessWidget {
  final bool isDesktop = defaultTargetPlatform == TargetPlatform.linux ||
      defaultTargetPlatform == TargetPlatform.macOS ||
      defaultTargetPlatform == TargetPlatform.windows;
  final Widget child;

  _Switcher({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isDesktop
        ? child
        : AnimatedSwitcher(
            key: key,
            duration: const Duration(milliseconds: 200),
            switchInCurve: Curves.easeInOut,
            switchOutCurve: Curves.easeInOut,
            child: child,
          );
  }
}
