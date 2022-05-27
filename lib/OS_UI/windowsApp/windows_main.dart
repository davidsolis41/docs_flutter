import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/windowsApp/pages/main_page_windows.dart';

class WindowsMain extends StatelessWidget {
  const WindowsMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<GlobalBloc>(create: (context) => GlobalBloc())],
      child: BlocBuilder<GlobalBloc, GlobalState>(builder: (context, state) {
        return FluentApp(
          title: 'Docs Windows',
          theme: ThemeData(activeColor: Colors.blue),
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: state.login ? routesWithLogin : routesWithOutLogin,
        );
      }),
    );
  }
}

final Map<String, Widget Function(BuildContext)> routesWithOutLogin = {
  '/': (context) => const MainPageWindows()
};

final Map<String, Widget Function(BuildContext)> routesWithLogin = {
  '/': (context) => const MainPageWindows()
};
