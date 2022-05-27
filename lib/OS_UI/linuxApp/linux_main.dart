import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/linuxApp/pages/main_page_linux.dart';

class LinuxMain extends StatelessWidget {
  const LinuxMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<GlobalBloc>(create: (context) => GlobalBloc())],
      child: BlocBuilder<GlobalBloc, GlobalState>(builder: (context, state) {
        return MaterialApp(
          title: 'Docs Linux',
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
  '/': (context) => const MainPageLinux()
};

final Map<String, Widget Function(BuildContext)> routesWithLogin = {
  '/': (context) => const MainPageLinux()
};
