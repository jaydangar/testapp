part of 'drawer_bloc.dart';

abstract class DrawerState extends Equatable {
  const DrawerState();
}

class DrawerInitial extends DrawerState {
  @override
  List<Object> get props => [];
}

class DrawerButtonSelected extends DrawerState {

  final int selectedButton;

  DrawerButtonSelected({@required this.selectedButton});

  @override
  List<Object> get props => [this.selectedButton];
}