import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/product.dart';

/// Price row: current price + struck-through old price + discount badge.
class PriceRow extends StatelessWidget {
  final Product product;

  const PriceRow({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '\$${product.price.toStringAsFixed(1)}',
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w800,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          '\$${product.oldPrice.toStringAsFixed(0)}',
          style: const TextStyle(
            fontSize: 13,
            color: AppColors.textMuted,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        const SizedBox(width: 6),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
          decoration: BoxDecoration(
            color: AppColors.accent,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            '${product.discountPercent}%',
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
