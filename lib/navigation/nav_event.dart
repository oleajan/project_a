import 'package:flutter/foundation.dart';

@immutable
abstract class NavEvent {
  const NavEvent();
}

class NavEventInitialize extends NavEvent {
  const NavEventInitialize();
}

class NavEventDashboard extends NavEvent {
  const NavEventDashboard();
}

class NavEventTransactions extends NavEvent {
  const NavEventTransactions();
}

class NavEventAssets extends NavEvent {
  const NavEventAssets();
}

class NavEventSettings extends NavEvent {
  const NavEventSettings();
}