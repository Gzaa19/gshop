import 'package:flutter/widgets.dart';

import '../../domain/entities/category.dart';

/// Data-layer representation of [Category].
class CategoryModel {
  final String name;
  final IconData icon;

  const CategoryModel({required this.name, required this.icon});

  Category toEntity() => Category(name: name, icon: icon);
}
