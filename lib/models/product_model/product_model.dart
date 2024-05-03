import 'dart:convert';

ProductModel productModelfromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    required this.image,
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.isfavourite,
    required this.status,
    this.qty,
  });

  String image;
  String id;
  bool isfavourite;
  String name;
  String price;
  String description;
  String status;

  int? qty;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        name: json['name'],
        description: json['description'],
        image: json['image'],
        isfavourite: false,
        qty: json["qty"],
        price: json['price'],
        status: json['status'],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "description": description,
        " isfavourite": isfavourite,
        "price": price,
        "status": status,
        "qty":qty,
      };
      @override
      ProductModel copyWith({
        int? qty,
      }) =>
      ProductModel(
  id: id,
        name:  name,
        description:  description,
        image:  image,
        isfavourite: isfavourite,
        qty: qty,
        price: price,
        status: status,
      );
      }
