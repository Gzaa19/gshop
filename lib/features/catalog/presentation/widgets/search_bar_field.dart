import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

/// Visual-only search field placeholder.
class SearchBarField extends StatelessWidget {
  final String hint;

  const SearchBarField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.surfaceMuted,
        borderRadius: BorderRadius.circular(12),
      ),
      // Row places the hint text and search icon side-by-side.
      child: Row(
        children: [
          Expanded(
            child: Text(
              hint,
              style: const TextStyle(
                color: AppColors.textSecondary,
                fontSize: 15,
              ),
            ),
          ),
          const Icon(Icons.search, color: AppColors.textSecondary),
        ],
      ),
    );
  }
}
