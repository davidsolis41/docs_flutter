class Example {
  String name;
  String description;
  double value;

  Example({
    required this.name,
    required this.description,
    required this.value,
  });

  factory Example.fromJson(Map<String, dynamic> json) => Example(
        name: json["name"] ?? '',
        description: json["description"] ?? '',
        value: double.tryParse(json["value"]) ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "value": value,
      };
}

class Examples {
  late List<Example> items;

  Examples(List<dynamic> list) {
    if (list.isEmpty) items = [];

    items = list.map((item) => Example.fromJson(item)).toList();
  }

  List<Map<String, dynamic>> toJson() =>
      items.map((item) => item.toJson()).toList();

  static List<Map<String, dynamic>> toJsonExternalList(List<Example> list) =>
      list.map((item) => item.toJson()).toList();
}
