import 'package:flutter/material.dart';

class PageviewBuilder extends StatelessWidget {
  PageviewBuilder({Key? key}) : super(key: key);

  final PageController controller =
      PageController(initialPage: 1, viewportFraction: 0.3);

  final List items = ['uno', 'dos', 'tres'];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller, //controlador de este PageView
      onPageChanged: (int i) {}, //se llama cada vez que cambie la page
      scrollDirection: Axis.horizontal, //direccion del scroll
      pageSnapping:
          false, // avilitar/desabilitar el comp por defecto del scroll
      itemCount: items.length,
      itemBuilder: (BuildContext context, int i) {
        return ListTile(title: Text(items[i]));
      },
    );
  }
}
