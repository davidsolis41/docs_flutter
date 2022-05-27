import 'dart:async';

const List<Map> PRODUCTOS = [
  {'nombre': 'Camisa', 'precio': 20},
  {'nombre': 'Pantalon', 'precio': 30},
  {'nombre': 'Sueter', 'precio': 50}
]; //Simulacion de respuesta del api

class Productos {
  Productos() {
    getProductos.listen((productsList) {
      _productosCounter.add(productsList.length);
    });
  }

  Stream<List<Map>> get getProductos async* {
    final List<Map> productos = [];

    for (Map producto in PRODUCTOS) {
      await Future.delayed(const Duration(seconds: 2));

      productos.add(producto);

      yield productos; // es como el return pero de los streams
    }
  }

  final StreamController<int> _productosCounter = StreamController<int>();
  Stream<int> get productosCounterStream => _productosCounter.stream;

  void disposeProductosCounter() {
    _productosCounter.close();
  }
}
