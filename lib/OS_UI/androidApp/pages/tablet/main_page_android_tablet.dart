import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/androidApp/pages/tablet/home_page_android_tablet.dart';
import 'package:docs_flutter/OS_UI/androidApp/pages/tablet/login_page_android_tablet.dart';

class MainPageAndroidTablet extends StatelessWidget {
  const MainPageAndroidTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalBloc, GlobalState>(
      builder: (context, state) {
        return state.login
            ? const HomePageAndroidTablet()
            : const LoginPageAndroidTablet();
      },
    );
  }
}
