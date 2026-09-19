class Categories {
  final String name;
  final int id;

  Categories({required this.name, required this.id});
  factory Categories.fromJson(json){
    return Categories(name: json['name'], id: json['id']);

  }
}
