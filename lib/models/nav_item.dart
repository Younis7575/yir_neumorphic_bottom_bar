import 'package:flutter/material.dart';

/// Model class for bottom navigation items
class NavItem {
  /// The icon to display for this navigation item
  final IconData icon;
  
  /// The label text for this navigation item
  final String label;
  
  /// Optional custom color for the icon when selected
  final Color? selectedColor;
  
  /// Optional custom color for the icon when unselected
  final Color? unselectedColor;

  const NavItem({
    required this.icon,
    required this.label,
    this.selectedColor,
    this.unselectedColor,
  });
}