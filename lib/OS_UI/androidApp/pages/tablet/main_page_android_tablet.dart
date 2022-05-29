import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/androidApp/pages/tablet/home_page_android_tablet.dart';
import 'package:docs_flutter/OS_UI/androidApp/pages/tablet/login_page_android_tablet.dart';

class MainPageAndroidTablet extends StatelessWidget {
  const MainPageAndroidTablet({Key? key}) : super(key: key);

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
    final GlobalBloc globalBloc = BlocProvider.of<GlobalBloc>(context);

    checkLogin(globalBloc);

    return BlocBuilder<GlobalBloc, GlobalState>(
      builder: (context, state) => state.login
          ? const HomePageAndroidTablet()
          : const LoginPageAndroidTablet(),
    );
  }
}
