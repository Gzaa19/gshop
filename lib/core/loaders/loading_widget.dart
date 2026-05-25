import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

/// Compact circular loader used across the app.
class LoadingWidget extends StatelessWidget {
  final double size;
  final double strokeWidth;

  const LoadingWidget({
    super.key,
    this.size = 24,
    this.strokeWidth = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          strokeWidth: strokeWidth,
          valueColor: const AlwaysStoppedAnimation(AppColors.accent),
        ),
      ),
    );
  }
}
