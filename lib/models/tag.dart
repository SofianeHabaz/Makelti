import 'package:marketplace/models/product.dart';

class Tag {
  String id;
  String name;
  List<Product>? products;
  Tag({required this.id, required this.name, this.products});

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        id: json['_id'],
        name: json['name'],
        products: json['products'],
      );
}
