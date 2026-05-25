import 'package:flutter/material.dart';

import '../../domain/entities/category.dart';
import 'category_item.dart';

/// Horizontal [ListView] of [CategoryItem] tiles.
class CategoryList extends StatelessWidget {
  final List<Category> categories;

  const CategoryList({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: categories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) =>
            CategoryItem(category: categories[index]),
      ),
    );
  }
}
