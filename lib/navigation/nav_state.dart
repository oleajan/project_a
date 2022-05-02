import 'package:flutter/foundation.dart';

@immutable
abstract class NavState {
  const NavState();
}

class NavStateInitialized extends NavState {}
