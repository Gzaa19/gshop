import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

/// Square icon button used for the list/grid view toggle.
class ViewToggleButton extends StatelessWidget {
  final IconData icon;
  final bool selected;

  const ViewToggleButton({
    super.key,
    required this.icon,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: selected ? AppColors.accent : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.border),
      ),
      child: Icon(
        icon,
        size: 20,
        color: selected ? Colors.white : Colors.black54,
      ),
    );
  }
}
