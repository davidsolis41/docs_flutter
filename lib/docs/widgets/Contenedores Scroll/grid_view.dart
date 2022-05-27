import 'package:flutter/material.dart';

class GridWidget extends StatefulWidget {
  final String title;

  const GridWidget({Key? key, required this.title})
      : super(key: key); //al llamar el widget se le pasa el titulo

  @override
  State<GridWidget> createState() => _GridWidget();
}

class _GridWidget extends State<GridWidget> {
  late ScrollController _controller;
  bool _loading = false;

  void _scroll() async {
    if (_controller.position.pixels >=
        _controller.position.maxScrollExtent - 100) {
      if (_loading != true) {
        _loading = true;
        // instrucciones
        print('hola');
        // instrucciones
        _loading = false;
      }
    }
  }

  @override
  void initState() {
    super.initState();

    _controller = ScrollController();

    _controller.addListener(_scroll);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.removeListener(_scroll);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      controller: _controller,
      primary:
          false, // !primary ? solo puede hacer scroll si hay suficientes elementos para desplazarse
      padding: const EdgeInsets.all(7), // padding entre bordes
      crossAxisSpacing: 5, // espacio horizontal
      mainAxisSpacing: 5, // espacio vertical
      crossAxisCount: 2, // cuántos elementos por fila
      childAspectRatio: (1), // alto de los elementos hijos recomendado 1 - 10
      scrollDirection: Axis.vertical, //direccion del scroll
      children: <Widget>[
        Container(
          height: 10.0,
          decoration: BoxDecoration(
              border: Border.all(width: 3.0, color: Colors.black)),
          child: const Text("Soy un elemento"),
        ),
        Container(
          height: 10.0,
          decoration: BoxDecoration(
              border: Border.all(width: 3.0, color: Colors.black)),
          child: const Text("Soy un elemento"),
        ),
        Container(
          height: 10.0,
          decoration: BoxDecoration(
              border: Border.all(width: 3.0, color: Colors.black)),
          child: const Text("Soy un elemento"),
        ),
        Container(
          height: 10.0,
          decoration: BoxDecoration(
              border: Border.all(width: 3.0, color: Colors.black)),
          child: const Text("Soy un elemento"),
        )
      ],
    );
  }
}
