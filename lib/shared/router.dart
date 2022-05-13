import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_a/dashboard/dashboard_view.dart';
import 'package:project_a/setting/settings_view.dart';
import 'package:project_a/shared/root_layout.dart';
import 'package:project_a/transaction/transactions_view.dart';

import '../accounts/accounts_view.dart';

const _pageKey = ValueKey('_pageKey');
const _scaffoldKey = ValueKey('_scaffoldKey');

const List<NavigationDestination> destinations = [
  NavigationDestination(
    label: 'Dashboard',
    icon: Icon(Icons.home),
    route: '/',
  ),
  NavigationDestination(
    label: 'Transactions',
    icon: Icon(Icons.playlist_add),
    route: '/transactions',
  ),
  NavigationDestination(
    label: 'Accounts',
    icon: Icon(Icons.people),
    route: '/accounts',
  ),
  NavigationDestination(
    route: '/settings',
    label: 'Settings',
    icon: Icon(Icons.settings),
  ),
];

class NavigationDestination {
  const NavigationDestination({
    required this.route,
    required this.label,
    required this.icon,
    this.child,
  });

  final String route;
  final String label;
  final Icon icon;
  final Widget? child;
}

final appRouter = GoRouter(
  // navigatorBuilder: (context, state, child) => PlayPauseListener(child: child),
  routes: [
    // Dashboard
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

    // Transactions
    GoRoute(
      path: '/transactions',
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: RootLayout(
          key: _scaffoldKey,
          currentIndex: 1,
          child: Transactions(),
        ),
      ),
    ),

    // Accounts
    GoRoute(
      path: '/accounts',
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: RootLayout(
          key: _scaffoldKey,
          currentIndex: 2,
          child: Accounts(),
        ),
      ),
    ),

    // Settings
    GoRoute(
      path: '/settings',
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: RootLayout(
          key: _scaffoldKey,
          currentIndex: 3,
          child: Settings(),
        ),
      ),
    ),

    for (final route in destinations.skip(5))
      GoRoute(
        path: route.route,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: _pageKey,
          child: RootLayout(
            key: _scaffoldKey,
            currentIndex: destinations.indexOf(route),
            child: const SizedBox(),
          ),
        ),
      ),
  ],
);