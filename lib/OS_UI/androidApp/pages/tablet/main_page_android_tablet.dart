import 'package:flutter/material.dart';

class MainPageAndroidTablet extends StatelessWidget {
  const MainPageAndroidTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: ((context, BoxConstraints constraints) {
            //constraints.maxWidth;
            //constraints.maxHeight;
            return Container();
          }),
        ),
      ),
    );
    ;
  }
}
