import 'package:flutter/material.dart';

class Pageviews extends StatelessWidget {
  Pageviews({Key? key}) : super(key: key);

  final PageController controller =
      PageController(initialPage: 1, viewportFraction: 0.3);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller, //controlador de este PageView
      onPageChanged: (int i) {}, //se llama cada vez que cambie la page
      scrollDirection: Axis.horizontal, //direccion del scroll
      pageSnapping:
          false, // avilitar/desabilitar el comp por defecto del scroll
      children: const <Widget>[],
    );
  }
}
