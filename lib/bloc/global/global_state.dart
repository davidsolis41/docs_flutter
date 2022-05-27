part of 'global_bloc.dart';

@immutable
abstract class GlobalState extends Equatable {
  const GlobalState();

  final bool login = false;

  @override
  List<Object> get props => [];
}

class GlobalInitialState extends GlobalState {}

class GlobalModifyState extends GlobalState {}
