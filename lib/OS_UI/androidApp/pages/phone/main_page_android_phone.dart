import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/androidApp/pages/phone/home_page_android_phone.dart';
import 'package:docs_flutter/OS_UI/androidApp/pages/phone/login_page_android_phone.dart';

class MainPageAndroidPhone extends StatelessWidget {
  const MainPageAndroidPhone({Key? key}) : super(key: key);

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
      builder: (context, state) => state.login
          ? const HomePageAndroidPhone()
          : const LoginPageAndroidPhone(),
    );
  }
}
