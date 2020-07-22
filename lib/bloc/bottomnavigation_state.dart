part of 'bottomnavigation_bloc.dart';

@immutable
abstract class BottomNavigationState extends Equatable {}

class BottomNavigationInitial extends BottomNavigationState {
  final int initialSelection = 0;

  @override
  List<Object> get props => [this.initialSelection];
}

class BottomNavigationSelectionChangeState extends BottomNavigationState {
  final int index;

  BottomNavigationSelectionChangeState({@required this.index});

  @override
  List<Object> get props => [this.index];
}
