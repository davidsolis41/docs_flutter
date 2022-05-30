part of 'global_bloc.dart';

@immutable
abstract class GlobalState extends Equatable {
  const GlobalState({
    required this.login,
    required this.token,
  });

  final bool login;
  final String token;

  @override
  List<Object> get props => [];
}

class GlobalInitialState extends GlobalState {
  const GlobalInitialState() : super(login: false, token: '');
}

class GlobalModifyState extends GlobalState {
  GlobalModifyState(GlobalState state, {bool? login, String? token = ''})
      : super(
          login: login ?? state.login,
          token: token ?? state.token,
        );
}
