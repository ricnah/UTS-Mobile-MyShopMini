import 'package:flutter/widgets.dart';

class ProductModel {
  final String name;
  final String price;
  final String image; // pakai assets
  final String description;

  ProductModel({
    required this.name,
    required this.price,
    required this.image,
    required this.description,
  });
}
