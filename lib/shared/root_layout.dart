import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_a/shared/adaptive_navigation.dart';

import './router.dart' as router;
import 'package:go_router/go_router.dart' as go;

class RootLayout extends StatelessWidget {
  final Widget child;
  final int currentIndex;

  static const _switcherKey = ValueKey('switcherKey');
  static const _navigationRailKey = ValueKey('navigationRailKey');

  const RootLayout({
    Key? key,
    required this.child,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        void onSelected(int index) {
          final destination = router.destinations[index];
          go.GoRouter.of(context).go(destination.route);
        }

        return AdaptiveNavigation(
          destinations: router.destinations
              .map((e) => NavigationDestination(icon: e.icon, label: e.label))
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
            ],
          ),
        );
      },
    );
  }
}

class _Switcher extends StatelessWidget {
  final bool isDekstop = defaultTargetPlatform == TargetPlatform.linux ||
      defaultTargetPlatform == TargetPlatform.macOS ||
      defaultTargetPlatform == TargetPlatform.windows;
  final Widget child;

  _Switcher({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isDekstop
        ? child
        : AnimatedSwitcher(
            key: key,
            duration: const Duration(milliseconds: 200),
            switchInCurve: Curves.easeIn,
            switchOutCurve: Curves.easeInOut,
            child: child,
          );
  }
}
