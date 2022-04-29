import 'package:flutter/foundation.dart';

@immutable
abstract class NavigationState {
  const NavigationState();
}

class NavigationStateDashboard extends NavigationState {}

class NavigationStateAccounts extends NavigationState {}

class NavigationStateTransactions extends NavigationState {}

class NavigationStateSettings extends NavigationState {}