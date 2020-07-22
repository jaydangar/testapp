part of 'loading_bloc.dart';

abstract class LoadingEvent extends Equatable {
  const LoadingEvent();
}

class LoadingStartEvent extends LoadingEvent {
  @override
  List<Object> get props => [];
}
