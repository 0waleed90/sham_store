import 'package:my_store/feature/home/data/models/product_model/categories.dart';

class ProductModel {
  final String title;
  final String description;
  final int price;
  final int id;
  final Categories category;
  ProductModel({
    required this.title,
    required this.description,
    required this.price,
    required this.id,
    required this.category,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json['title'],
      description: json['description'],
      price: json['price'],
      id: json['id'],
      category: json['category'],
    );
  }
}
