import 'package:flutter/material.dart';

class PulltoRefresh extends StatelessWidget {
  PulltoRefresh({Key? key}) : super(key: key);

  final ScrollController _controller = ScrollController();
  final List _listaNumeros = [];

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: obtenerPagina1, //Debe ser un future que retorna null
      backgroundColor: Colors.black,
      color: Colors.blue,
      child: ListView.builder(
        //Debe ser un contenedor con scroll
        controller: _controller,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index) {
          return const FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300/?image'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          );
        },
      ),
    );
  }

  Future<void> obtenerPagina1() async {}
}
