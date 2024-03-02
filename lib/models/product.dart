import 'package:marketplace/models/tag.dart';
import 'package:marketplace/models/user.dart';

class Product {
  String id;
  String name;
  String description;
  List<Tag> tags;
  User vendor;
  List<User>? buyers;
  String image;
  double price;
  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.tags,
      required this.vendor,
      this.buyers,
      required this.image,
      required this.price});

  Product copyWith({
    String? id,
    String? name,
    String? description,
    List<Tag>? tags,
    User? vendor,
    List<User>? buyers,
    String? image,
    double? price,
  }) =>
      Product(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        tags: tags ?? this.tags,
        vendor: vendor ?? this.vendor,
        buyers: buyers ?? this.buyers,
        image: image ?? this.image,
        price: price ?? this.price,
      );

  factory Product.fromJson(Map<String, dynamic> json) => Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      tags: json['tags'],
      vendor: json['vendor'],
      buyers: json['buyers'],
      image: json['image'],
      price: json['price']);
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'desciption': description,
        'tags': tags,
        'vendor': vendor,
        'buyers': buyers,
        'image': image,
        'price': price,
      };
}
