import 'package:flutter/widgets.dart';

class CategoryModel {
  final String name;
  final IconData icon;
  final String thumbnailAsset; // optional if you want image assets

  const CategoryModel({
    required this.name,
    required this.icon,
    this.thumbnailAsset = '',
  });
}
