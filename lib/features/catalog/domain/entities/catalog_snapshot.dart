import 'package:equatable/equatable.dart';

import 'category.dart';
import 'product.dart';

/// Aggregate returned by [GetCatalog]: everything needed to render the
/// catalog screen in one fetch.
class CatalogSnapshot extends Equatable {
  final List<Category> categories;
  final List<Product> products;
  final int totalProductCount;

  const CatalogSnapshot({
    required this.categories,
    required this.products,
    required this.totalProductCount,
  });

  @override
  List<Object?> get props => [categories, products, totalProductCount];
}
