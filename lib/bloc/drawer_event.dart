part of 'drawer_bloc.dart';

abstract class DrawerEvent extends Equatable {
  const DrawerEvent();
}

class DrawerButtonSelectionEvent extends DrawerEvent {

  final int buttonSelected;

  DrawerButtonSelectionEvent({@required this.buttonSelected});

  @override
  List<Object> get props => [this.buttonSelected];
  
}