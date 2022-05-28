import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/windowsApp/pages/home_page_windows.dart';
import 'package:docs_flutter/OS_UI/windowsApp/pages/login_page_windows.dart';

class MainPageWindows extends StatelessWidget {
  const MainPageWindows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalBloc, GlobalState>(
      builder: (context, state) {
        return state.login ? const HomePageWindows() : const LoginPageWindows();
      },
    );
  }
}
