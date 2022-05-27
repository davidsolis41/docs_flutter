class Item {
  String? nombre;
  int? edad;
  bool? mayor;

  Item(Map<dynamic, dynamic> json) {
    nombre = json['nombre'];
    edad = json['edad'];
    mayor = json['mayor'];
  }
}

class Items {
  List<Item> items = [];

  Items(List<dynamic> listaJson) {
    if (listaJson.isEmpty) return;

    for (var item in listaJson) {
      items.add(Item(item));
    }
  }
}
