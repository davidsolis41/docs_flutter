part of 'global_bloc.dart';

@immutable
abstract class GlobalEvent extends Equatable {
  const GlobalEvent();

  @override
  List<Object> get props => [];
}

class SetTokenEvent extends GlobalEvent {}
