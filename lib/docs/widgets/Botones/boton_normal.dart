import 'package:flutter/material.dart';

class BotonNormal extends StatelessWidget {
  const BotonNormal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      onLongPress: () {},
      style: ElevatedButton.styleFrom(
          primary: Colors.black, onPrimary: Colors.white),
      autofocus: false,
      child: const Text('hola'),
    );
  }
}
