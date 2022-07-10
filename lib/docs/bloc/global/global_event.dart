part of 'global_bloc.dart';

@immutable
abstract class GlobalEvent extends Equatable {
  const GlobalEvent(this.lastState);

  final GlobalState lastState;

  @override
  List<Object> get props => [];
}

class SetLoginEvent extends GlobalEvent {
  final String token;
  final bool login;

  const SetLoginEvent(
    GlobalState lastState, {
    required this.token,
    required this.login,
  }) : super(lastState);
}
