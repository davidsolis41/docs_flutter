part of 'global_bloc.dart';

@immutable
abstract class GlobalEvent extends Equatable {
  const GlobalEvent();

  @override
  List<Object> get props => [];
}

class SetLoginEvent extends GlobalEvent {
  const SetLoginEvent({
    required this.lastState,
    required this.token,
    required this.login,
  });

  final GlobalState lastState;
  final String token;
  final bool login;
}
