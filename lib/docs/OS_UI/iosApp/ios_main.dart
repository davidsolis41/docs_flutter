import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/iosApp/pages/phone/main_page_ios_phone.dart';
import 'package:docs_flutter/OS_UI/iosApp/pages/tablet/main_page_ios_tablet.dart';

class IosMain extends StatelessWidget {
  const IosMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<GlobalBloc>(create: (context) => GlobalBloc())],
      child: BlocBuilder<GlobalBloc, GlobalState>(builder: (context, state) {
        return CupertinoApp(
          title: 'Docs Ios',
          theme: const CupertinoThemeData(),
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: state.login ? routesWithLogin : routesWithOutLogin,
        );
      }),
    );
  }
}

final Map<String, Widget Function(BuildContext)> routesWithOutLogin = {
  '/': responsiveScreens(const MainPageIosPhone(), const MainPageIosTablet())
};

final Map<String, Widget Function(BuildContext)> routesWithLogin = {
  '/': responsiveScreens(const MainPageIosPhone(), const MainPageIosTablet())
};

Widget Function(BuildContext) responsiveScreens(
  Widget pagePhone,
  Widget pageTablet,
) =>
    (context) =>
        MediaQuery.of(context).size.width < 700 ? pagePhone : pageTablet;
