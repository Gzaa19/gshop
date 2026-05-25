import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import 'view_toggle_button.dart';

/// Header above the product grid: count text + view toggle buttons.
class ProductsHeader extends StatelessWidget {
  final int totalCount;

  const ProductsHeader({super.key, required this.totalCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      // Row separates the count text on the left from the view toggles on the right.
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            // Column stacks the title and subtitle vertically.
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$totalCount Products',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Based on your filter',
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          const ViewToggleButton(icon: Icons.menu, selected: false),
          const SizedBox(width: 8),
          const ViewToggleButton(icon: Icons.grid_view_rounded, selected: true),
        ],
      ),
    );
  }
}
