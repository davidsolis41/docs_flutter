import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/iosApp/pages/phone/home_page_ios_phone.dart';
import 'package:docs_flutter/OS_UI/iosApp/pages/phone/login_page_ios_phone.dart';

class MainPageIosPhone extends StatelessWidget {
  const MainPageIosPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalBloc, GlobalState>(
      builder: (context, state) {
        return state.login
            ? const HomePageIosPhone()
            : const LoginPageIosPhone();
      },
    );
  }
}
