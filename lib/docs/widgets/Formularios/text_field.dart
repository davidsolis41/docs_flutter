import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  const Inputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String value = '';
    TextEditingController controllerI = TextEditingController(text: value);

    return TextField(
      controller: controllerI,
      keyboardType: TextInputType.text,
      autocorrect: false, // habilitar el autocorrector
      autofocus: true,
      enabled: true,
      textCapitalization: TextCapitalization.sentences, //cada palabra
      maxLength: 10,
      onChanged: (String valor) {
        // cada vez que se escribe
        value = valor;
      },
      onTap: () {}, // al tocar se activa el evento
      obscureText: true, //inputs de contraseña, vuelve puntos las letras
      decoration: InputDecoration(
          counter:
              const Text('letras 0'), // texto a la derecha debajo del input
          hintText: 'soy el placeholder del input', // placeholder
          labelText: 'nombre', // Nombre del input
          helperText: 'texto de ayuda abajo del input', // Texto abajo
          icon: const Icon(Icons.ac_unit), // icono al inicio
          suffixIcon: const Icon(Icons.add), // icono al final
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
    );
  }
}
