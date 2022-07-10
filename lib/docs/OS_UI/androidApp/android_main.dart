import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/androidApp/pages/phone/main_page_android_phone.dart';
import 'package:docs_flutter/OS_UI/androidApp/pages/tablet/main_page_android_tablet.dart';

class AndroidMain extends StatelessWidget {
  const AndroidMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<GlobalBloc>(create: (context) => GlobalBloc())],
      child: BlocBuilder<GlobalBloc, GlobalState>(builder: (context, state) {
        return MaterialApp(
          title: 'Docs Android',
          theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: state.login ? routesWithLogin : routesWithOutLogin,
        );
      }),
    );
  }
}

final Map<String, Widget Function(BuildContext)> routesWithOutLogin = {
  '/': responsiveScreens(
    const MainPageAndroidPhone(),
    const MainPageAndroidTablet(),
  )
};

final Map<String, Widget Function(BuildContext)> routesWithLogin = {
  '/': responsiveScreens(
    const MainPageAndroidPhone(),
    const MainPageAndroidTablet(),
  )
};

Widget Function(BuildContext) responsiveScreens(
  Widget pagePhone,
  Widget pageTablet,
) =>
    (context) =>
        MediaQuery.of(context).size.width < 700 ? pagePhone : pageTablet;
