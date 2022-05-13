import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_a/dashboard/dashboard_view.dart';
import 'package:project_a/shared/root_layout.dart';

const _pageKey = ValueKey('_pageKey');
const _scaffoldKey = ValueKey('_scaffoldKey');

const List<NavigationDestination> destinations = [
  NavigationDestination(
    route: '/',
    label: 'Dashboard',
    icon: Icon(Icons.arrow_right_rounded),
  ),
  NavigationDestination(
    route: '/transactions',
    label: 'Transactions',
    icon: Icon(Icons.arrow_right_rounded),
  ),
  NavigationDestination(
    route: '/assets',
    label: 'Assets',
    icon: Icon(Icons.arrow_right_rounded),
  ),
  NavigationDestination(
    route: '/settings',
    label: 'Settings',
    icon: Icon(Icons.arrow_right_rounded),
  ),
];

class NavigationDestination {
  final String route;
  final String label;
  final Icon icon;
  final Widget? child;

  const NavigationDestination({
    required this.route,
    required this.label,
    required this.icon,
    this.child,
  });
}

final appRouter = GoRouter(
  routes: [
    // HOMESCREEN
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: RootLayout(
          key: _scaffoldKey,
          currentIndex: 0,
          child: Dashboard(),
        ),
      ),
    ),

    for (final route in destinations.skip(3))
      GoRoute(
        path: route.route,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: _pageKey,
          child: RootLayout(
            key: _scaffoldKey,
            currentIndex: destinations.indexOf(route),
            child: const SizedBox(),
          )
        )
      ),
  ],
);
