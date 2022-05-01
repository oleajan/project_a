import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_a/navigation/nav_event.dart';
import 'package:project_a/navigation/nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc(NavState initialState) : super(initialState);

}