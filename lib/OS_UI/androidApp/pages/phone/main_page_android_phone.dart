import 'package:flutter/material.dart';

class MainPageAndroidPhone extends StatelessWidget {
  const MainPageAndroidPhone({Key? key}) : super(key: key);

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
  }
}
