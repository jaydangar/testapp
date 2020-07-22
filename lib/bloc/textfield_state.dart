part of 'textfield_bloc.dart';

abstract class TextfieldState extends Equatable {
  const TextfieldState();
}

class TextfieldInitial extends TextfieldState {
  @override
  List<Object> get props => [];
}

class OnChangeTextState extends TextfieldState {
  final String changedText;

  OnChangeTextState({@required this.changedText});

  @override
  List<Object> get props => [this.changedText];
}
