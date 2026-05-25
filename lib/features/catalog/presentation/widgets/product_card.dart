import 'package:flutter/material.dart';

import '../../domain/entities/product.dart';
import 'price_row.dart';

/// Single product card: image + name + price row.
class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // Column stacks the product image, name and price vertically.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              color: product.background,
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;
                return const Center(
                  child: SizedBox(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                );
              },
              errorBuilder: (context, error, stack) => const Center(
                child: Icon(
                  Icons.image_not_supported_outlined,
                  color: Colors.black26,
                  size: 32,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          product.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.black,
            height: 1.3,
          ),
        ),
        const SizedBox(height: 8),
        PriceRow(product: product),
      ],
    );
  }
}
