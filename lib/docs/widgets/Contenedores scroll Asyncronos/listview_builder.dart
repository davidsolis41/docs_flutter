import 'package:flutter/material.dart';

class ListViewW extends StatelessWidget {
  ListViewW({Key? key}) : super(key: key);

  final List<String> datos = ['uno', 'dos', 'tres']; //datos dinámicos
  final ScrollController _controllerList = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //  NUESTRA LISTA
      itemCount: datos.length, //largo de la lista
      itemBuilder: (BuildContext contextList, int i) {
        return ListTile(title: Text(datos[i]));
      },
      controller: _controllerList,
      padding: const EdgeInsets.only(left: 10.0, right: 15.0),
      scrollDirection: Axis.horizontal,
    );
  }
}
