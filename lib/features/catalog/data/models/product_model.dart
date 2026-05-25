import 'package:flutter/painting.dart';

import '../../domain/entities/product.dart';

/// Data-layer representation of [Product].
class ProductModel {
  final String name;
  final String imageUrl;
  final Color background;
  final double price;
  final double oldPrice;
  final int discountPercent;

  const ProductModel({
    required this.name,
    required this.imageUrl,
    required this.background,
    required this.price,
    required this.oldPrice,
    required this.discountPercent,
  });

  Product toEntity() => Product(
        name: name,
        imageUrl: imageUrl,
        background: background,
        price: price,
        oldPrice: oldPrice,
        discountPercent: discountPercent,
      );
}
