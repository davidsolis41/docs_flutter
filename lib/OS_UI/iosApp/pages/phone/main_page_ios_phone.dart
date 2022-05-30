import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/iosApp/pages/phone/home_page_ios_phone.dart';
import 'package:docs_flutter/OS_UI/iosApp/pages/phone/login_page_ios_phone.dart';

class MainPageIosPhone extends StatelessWidget {
  const MainPageIosPhone({Key? key}) : super(key: key);

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
          state.login ? const HomePageIosPhone() : const LoginPageIosPhone(),
    );
  }
}
