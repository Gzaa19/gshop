import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/category.dart';

/// Single category tile (icon + label) used inside the horizontal list.
class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Column stacks the icon tile above the label.
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: AppColors.accent.withValues(alpha: 0.85),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(category.icon, color: Colors.white, size: 30),
        ),
        const SizedBox(height: 8),
        Text(
          category.name,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
