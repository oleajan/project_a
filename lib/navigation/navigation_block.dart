
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_a/navigation/navigation_event.dart';
import 'package:project_a/navigation/navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc(NavigationState initialState) : super(NavigationStateDashboard());

}