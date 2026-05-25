import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../models/category_model.dart';
import '../../models/product_model.dart';

/// Local data source contract.
abstract class CatalogLocalDataSource {
  Future<List<CategoryModel>> fetchCategories();
  Future<List<ProductModel>> fetchProducts();
  Future<int> fetchTotalProductCount();
}

/// In-memory implementation backed by hardcoded sample data.
@LazySingleton(as: CatalogLocalDataSource)
class CatalogLocalDataSourceImpl implements CatalogLocalDataSource {
  const CatalogLocalDataSourceImpl();

  @override
  Future<List<CategoryModel>> fetchCategories() async => const [
        CategoryModel(name: 'Tshirt', icon: Icons.checkroom),
        CategoryModel(name: 'Shoes', icon: Icons.directions_run),
        CategoryModel(name: 'Bag', icon: Icons.shopping_bag_outlined),
        CategoryModel(name: 'Dress', icon: Icons.woman),
        CategoryModel(name: 'Watch', icon: Icons.watch_outlined),
        CategoryModel(name: 'Hat', icon: Icons.sports_baseball),
        CategoryModel(name: 'Jacket', icon: Icons.dry_cleaning),
      ];

  @override
  Future<List<ProductModel>> fetchProducts() async => const [
        ProductModel(
          name: 'Mint Leather Sneakers',
          imageUrl:
              'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?w=600&q=80',
          background: Color(0xFFB7F0C8),
          price: 212.5,
          oldPrice: 250,
          discountPercent: 15,
        ),
        ProductModel(
          name: 'Classic White Sneakers',
          imageUrl:
              'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=600&q=80',
          background: Color(0xFFFFC1CC),
          price: 180.0,
          oldPrice: 200,
          discountPercent: 10,
        ),
        ProductModel(
          name: 'Dark Wash Denim Jacket',
          imageUrl:
              'https://images.unsplash.com/photo-1591047139829-d91aecb6caea?w=600&q=80',
          background: Color(0xFFEDEDED),
          price: 212.5,
          oldPrice: 250,
          discountPercent: 15,
        ),
        ProductModel(
          name: 'Urban Sport Watch',
          imageUrl:
              'https://images.unsplash.com/photo-1524805444758-089113d48a6d?w=600&q=80',
          background: Color(0xFFEDEDED),
          price: 180.0,
          oldPrice: 200,
          discountPercent: 10,
        ),
        ProductModel(
          name: 'Linen Summer Shirt',
          imageUrl:
              'https://images.unsplash.com/photo-1602810318383-e386cc2a3ccf?w=600&q=80',
          background: Color(0xFFFFE7B0),
          price: 95.0,
          oldPrice: 120,
          discountPercent: 20,
        ),
        ProductModel(
          name: 'Leather Crossbody Bag',
          imageUrl:
              'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?w=600&q=80',
          background: Color(0xFFE6D5C3),
          price: 145.0,
          oldPrice: 180,
          discountPercent: 18,
        ),
      ];

  @override
  Future<int> fetchTotalProductCount() async => 967;
}
