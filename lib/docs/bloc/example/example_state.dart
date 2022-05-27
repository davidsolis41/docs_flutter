part of 'example_bloc.dart';

@immutable
abstract class ExampleState extends Equatable {
  const ExampleState();

  @override
  List<Object> get props => [];
}

class ExampleInitialState extends ExampleState {}

class ExampleModifyState extends ExampleState {}
