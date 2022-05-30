import 'package:flutter/cupertino.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/macosApp/pages/home_page_macos.dart';
import 'package:docs_flutter/OS_UI/macosApp/pages/login_page_macos.dart';

class MainPageMacOS extends StatelessWidget {
  const MainPageMacOS({Key? key}) : super(key: key);

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
    final GlobalBloc globalBloc = context.read<GlobalBloc>();

    checkLogin(globalBloc);

    return BlocBuilder<GlobalBloc, GlobalState>(
      builder: (context, state) =>
          state.login ? const HomePageMacOS() : const LoginPageMacOS(),
    );
  }
}
