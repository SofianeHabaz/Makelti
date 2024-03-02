import 'package:marketplace/models/product.dart';

class User {
  String id;
  String name;
  String email;
  List<Product>? historyProd;
  List<Product>? publishedProd;
  String phone;
  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      this.historyProd,
      this.publishedProd});

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
    List<Product>? historyProd,
    List<Product>? publishedProd,
  }) =>
      User(
          id: id ?? this.id,
          name: name ?? this.name,
          email: email ?? this.name,
          phone: phone ?? this.phone,
          historyProd: historyProd ?? this.historyProd,
          publishedProd: publishedProd ?? this.publishedProd);

  factory User.fromJson(Map<String, dynamic> json) => User(
      id: json['_id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      historyProd: json['historyProd'],
      publishedProd: json['publishedProd']);
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'phone': phone,
        'historyProd': historyProd,
        'publishedProd': publishedProd,
      };
}
