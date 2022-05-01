import 'package:flutter/foundation.dart';

@immutable
abstract class NavState {
  final bool isLoading;
  final String? loadingText;

  const NavState({required this.isLoading, this.loadingText = 'Please wait a moment...'});
} 

class NavStateLoading extends NavState {
  const NavStateLoading({required bool isLoading}) : super(isLoading: isLoading);
}