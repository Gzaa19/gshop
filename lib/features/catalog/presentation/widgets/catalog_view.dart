import 'package:flutter/material.dart';

import '../../domain/entities/catalog_snapshot.dart';
import 'category_list.dart';
import 'product_grid.dart';
import 'products_header.dart';
import 'search_bar_field.dart';

/// Successful catalog body. Receives the loaded snapshot and lays the
/// screen out using Column / Row / ListView / Image as required.
class CatalogView extends StatelessWidget {
  final CatalogSnapshot snapshot;

  const CatalogView({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    // Outer ListView gives the whole screen vertical scrolling.
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SearchBarField(hint: 'Search men fashion...'),
        ),
        const SizedBox(height: 20),
        CategoryList(categories: snapshot.categories),
        const SizedBox(height: 24),
        ProductsHeader(totalCount: snapshot.totalProductCount),
        const SizedBox(height: 16),
        ProductGrid(products: snapshot.products),
        const SizedBox(height: 24),
      ],
    );
  }
}
