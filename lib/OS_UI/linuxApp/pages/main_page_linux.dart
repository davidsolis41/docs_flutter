import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/linuxApp/pages/home_page_linux.dart';
import 'package:docs_flutter/OS_UI/linuxApp/pages/login_page_linux.dart';

class MainPageLinux extends StatelessWidget {
  const MainPageLinux({Key? key}) : super(key: key);

  void checkLogin(GlobalBloc globalBloc) async {
    if (false) {
      globalBloc.add(SetLoginEvent(
        lastState: globalBloc.state,
        login: false,
        token: '',
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    checkLogin(context.read<GlobalBloc>());

    return BlocBuilder<GlobalBloc, GlobalState>(
      builder: (context, state) =>
          state.login ? const HomePageLinux() : const LoginPageLinux(),
    );
  }
}
