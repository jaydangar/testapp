part of 'textfield_bloc.dart';

abstract class TextfieldEvent extends Equatable {
  const TextfieldEvent();
}

class OnTextChangedEvent extends TextfieldEvent {
  final String input;

  OnTextChangedEvent({@required this.input});

  @override
  List<Object> get props => [this.input];
}