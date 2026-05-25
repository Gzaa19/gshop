import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

/// Centered error placeholder with a message.
class ErrorMessageView extends StatelessWidget {
  final String message;

  const ErrorMessageView({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.textSecondary,
          ),
        ),
      ),
    );
  }
}
