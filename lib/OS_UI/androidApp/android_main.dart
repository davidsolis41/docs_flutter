import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/androidApp/pages/phone/main_page_android_phone.dart';
import 'package:docs_flutter/OS_UI/androidApp/pages/tablet/main_page_android_tablet.dart';

class AndroidMain extends StatelessWidget {
  const AndroidMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return MultiBlocProvider(
      providers: [BlocProvider<GlobalBloc>(create: (context) => GlobalBloc())],
      child: BlocBuilder<GlobalBloc, GlobalState>(builder: (context, state) {
        return MaterialApp(
          title: 'Docs Android',
          theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes:
              state.login ? routesWithLogin(width) : routesWithOutLogin(width),
        );
      }),
    );
  }
}

Map<String, Widget Function(BuildContext)> routesWithOutLogin(double width) => {
      '/': (context) => width > 700
          ? const MainPageAndroidPhone()
          : const MainPageAndroidTablet(),
    };

Map<String, Widget Function(BuildContext)> routesWithLogin(double width) => {
      '/': (context) => width > 700
          ? const MainPageAndroidPhone()
          : const MainPageAndroidTablet(),
    };
