import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/linuxApp/pages/home_page_linux.dart';
import 'package:docs_flutter/OS_UI/linuxApp/pages/login_page_linux.dart';

class MainPageLinux extends StatelessWidget {
  const MainPageLinux({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalState state =
        BlocProvider.of<GlobalBloc>(context, listen: false).state;

    return state.login ? const HomePageLinux() : const LoginPageLinux();
  }
}
