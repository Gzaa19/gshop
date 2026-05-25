import 'package:equatable/equatable.dart';
import 'package:flutter/painting.dart';

/// Domain entity representing a product card.
class Product extends Equatable {
  final String name;
  final String imageUrl;
  final Color background;
  final double price;
  final double oldPrice;
  final int discountPercent;

  const Product({
    required this.name,
    required this.imageUrl,
    required this.background,
    required this.price,
    required this.oldPrice,
    required this.discountPercent,
  });

  @override
  List<Object?> get props => [
        name,
        imageUrl,
        background,
        price,
        oldPrice,
        discountPercent,
      ];
}
