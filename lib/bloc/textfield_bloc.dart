import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'textfield_event.dart';
part 'textfield_state.dart';

class TextfieldBloc extends HydratedBloc<TextfieldEvent, TextfieldState> {
  TextfieldBloc() : super(TextfieldInitial());

  @override
  Stream<TextfieldState> mapEventToState(
    TextfieldEvent event,
  ) async* {
    if (event is OnTextChangedEvent) {
      yield OnChangeTextState(changedText: event.input);
    }
  }

  @override
  TextfieldState fromJson(Map<String, dynamic> json) {
    return OnChangeTextState(changedText: json['value']);
  }

  @override
  Map<String, TextfieldState> toJson(TextfieldState input) {
    return {'value': state};
  }
}
