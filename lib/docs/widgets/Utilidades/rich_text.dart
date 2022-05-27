import 'package:flutter/material.dart';

class RichText extends StatelessWidget {
  const RichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      //nos ayuda a aplicar diferentes estilos al texto
      TextSpan(
        //pasamos el textSpan
        text: 'Hello ', // primer pedazo de texto
        style: TextStyle(fontSize: 20.0), // estilo general
        children: <TextSpan>[
          // Lista de TextSpan con su texto y estilo
          TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' world!'),
        ],
      ), // TODOS LOS DEMAS PARAMETROS DE TEXT
    );
  }
}
