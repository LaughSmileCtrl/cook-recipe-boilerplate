class Recipe {
  Recipe({
    required this.createdAt,
    required this.name,
    required this.image,
    required this.description,
    required this.viewers,
    required this.id,
  });

  DateTime createdAt;
  String name;
  String image;
  String description;
  int viewers;
  String id;

  factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
    createdAt: DateTime.parse(json["createdAt"]),
    name: json["name"],
    image: json["image"],
    description: json["description"],
    viewers: json["viewers"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "createdAt": createdAt.toIso8601String(),
    "name": name,
    "image": image,
    "description": description,
    "viewers": viewers,
    "id": id,
  };
}
