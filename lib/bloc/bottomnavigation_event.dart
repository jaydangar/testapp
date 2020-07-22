part of 'bottomnavigation_bloc.dart';

@immutable
abstract class BottomNavigationEvent extends Equatable{}

class OnSelectionChanged extends BottomNavigationEvent{
  final int index;

  OnSelectionChanged({@required this.index});

  @override
  List<Object> get props => [this.index];

}