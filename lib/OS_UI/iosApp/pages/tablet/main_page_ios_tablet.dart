import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/iosApp/pages/tablet/home_page_ios_tablet.dart';
import 'package:docs_flutter/OS_UI/iosApp/pages/tablet/login_page_ios_tablet.dart';

class MainPageIosTablet extends StatelessWidget {
  const MainPageIosTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalBloc, GlobalState>(
      builder: (context, state) {
        return state.login
            ? const HomePageIosTablet()
            : const LoginPageIosTablet();
      },
    );
  }
}
