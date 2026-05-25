import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

/// Domain entity representing a product category.
///
/// Note: [IconData] is from `flutter/widgets`. Pure-Dart entities are ideal,
/// but for a UI-only catalog using Material icons it's the simplest source
/// of truth. Swap for a `String iconName` if a non-Flutter consumer ever
/// needs to read this.
class Category extends Equatable {
  final String name;
  final IconData icon;

  const Category({required this.name, required this.icon});

  @override
  List<Object?> get props => [name, icon];
}
