class Example {
  String name;
  String description;
  double value;

  Example(Map<String, dynamic> json)
      : name = json["name"] ?? '',
        description = json["description"] ?? '',
        value = json["value"] ?? 0;

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "value": value,
      };

  factory Example.fromJson(Map<String, dynamic> json) => Example(json);

  static List<Example> fromJsonList(List<Map<String, dynamic>> list) {
    if (list.isEmpty) list = [];
    return list.map((item) => Example.fromJson(item)).toList();
  }

  static List<Map<String, dynamic>> toJsonExternalList(List<Example> list) =>
      list.map((item) => item.toJson()).toList();
}
