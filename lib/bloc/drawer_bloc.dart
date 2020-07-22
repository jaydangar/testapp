import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'drawer_event.dart';
part 'drawer_state.dart';

class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc() : super(DrawerInitial());

  @override
  Stream<DrawerState> mapEventToState(
    DrawerEvent event,
  ) async* {
    if(event is DrawerButtonSelectionEvent){
      yield DrawerButtonSelected(selectedButton: event.buttonSelected);
    }
  }
}
