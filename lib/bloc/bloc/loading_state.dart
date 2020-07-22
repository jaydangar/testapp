part of 'loading_bloc.dart';

abstract class LoadingState extends Equatable {
  const LoadingState();
}

class LoadingInitial extends LoadingState {
  @override
  List<Object> get props => [];
}

class Loaded extends LoadingState {
  @override
  List<Object> get props => [];
}