import 'package:flutter/material.dart';

class ListViewW extends StatelessWidget {
  ListViewW({Key? key}) : super(key: key);

  final List<String> datos = ['uno', 'dos', 'tres']; //datos dinámicos
  final ScrollController _controllerList = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      //  NUESTRA LISTA
      padding: const EdgeInsets.only(left: 10.0, right: 15.0),
      scrollDirection: Axis.horizontal,
      controller: _controllerList,
      children: _items(), //método que nos devolverá una lista de widgets
    );
  }

  List<Widget> _items() => datos //Este método retorna una lista de widgets
      .map((item) => ListTile(
            //cada iteración devuelve un componente listTitle
            title: Text(item), //Con un texto, el cual es el elemento
          ))
      .toList(); // luego, hacemos una lista con toda la iteracion
}
