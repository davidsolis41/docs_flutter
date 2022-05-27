import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  const Texto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hola que tal',
      style: TextStyle(fontSize: 20.0), // estilo del texto
      textAlign: TextAlign.end, // Alineación del texto
      textDirection: TextDirection.ltr, //left to right
      maxLines: 5, // OPCIONAL indicamos el maximo de lineas
      softWrap: true, //opcional, es el wrap del texto
      overflow: TextOverflow
          .ellipsis, // si ya no cabe e texto remplaza por puntos suspensivos
    );
  }
}
