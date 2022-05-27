import 'package:flutter/cupertino.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docs_flutter/bloc/global/global_bloc.dart';
import 'package:docs_flutter/OS_UI/macosApp/pages/main_page_macos.dart';

class MacOSMain extends StatelessWidget {
  const MacOSMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<GlobalBloc>(create: (context) => GlobalBloc())],
      child: BlocBuilder<GlobalBloc, GlobalState>(builder: (context, state) {
        return MacosApp(
          title: 'Docs MacOS',
          theme: MacosThemeData.light(),
          darkTheme: MacosThemeData.dark(),
          //themeMode: appTheme.mode,
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: state.login ? routesWithLogin : routesWithOutLogin,
        );
      }),
    );
  }
}

final Map<String, Widget Function(BuildContext)> routesWithOutLogin = {
  '/': (context) => const MainPageMacOS()
};

final Map<String, Widget Function(BuildContext)> routesWithLogin = {
  '/': (context) => const MainPageMacOS()
};
