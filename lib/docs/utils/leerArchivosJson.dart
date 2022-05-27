import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

void leerJson() async {
  String archivoJson = await rootBundle
      .loadString('lib/public/optsPrincipal.json'); //leemos el archivo

  Map<String, dynamic> myMap = jsonDecode(archivoJson); // decodificar el json
}
