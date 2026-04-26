import 'package:flutter/material.dart';
import '../models/nav_item.dart';
import 'circle_button.dart';
import 'selected_pill.dart';

/// Main neumorphic bottom navigation bar widget
class NeumorphicNavBar extends StatelessWidget {
  /// List of navigation items to display
  final List<NavItem> items;
  
  /// Currently selected item index
  final int selectedIndex;
  
  /// Callback when an item is tapped
  final ValueChanged<int> onTap;
  
  /// Background color of the navigation bar
  final Color backgroundColor;
  
  /// Border radius of the navigation bar
  final double borderRadius;
  
  /// Height of the navigation bar
  final double height;
  
  /// Horizontal padding for the navigation bar
  final double horizontalPadding;
  
  /// Vertical padding for the navigation bar
  final double verticalPadding;

  const NeumorphicNavBar({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onTap,
    this.backgroundColor = const Color(0xFFCDD5DF),
    this.borderRadius = 38,
    this.height = 76,
    this.horizontalPadding = 20,
    this.verticalPadding = 10,
  }) : assert(items.length >= 3 && items.length <= 4, 
         'Items count must be between 3 and 4');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.80),
            offset: const Offset(-5, -5),
            blurRadius: 14,
          ),
          BoxShadow(
            color: const Color(0xFF9AA5B1).withOpacity(0.75),
            offset: const Offset(5, 5),
            blurRadius: 14,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        child: Row(
          children: [
            for (int i = 0; i < items.length; i++) ...[
              if (i == selectedIndex)
                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 350),
                    child: SelectedPill(
                      key: ValueKey(i),
                      icon: items[i].icon,
                      label: items[i].label,
                      selectedColor: items[i].selectedColor,
                    ),
                  ),
                )
              else
                CircleButton(
                  icon: items[i].icon,
                  onTap: () => onTap(i),
                  unselectedColor: items[i].unselectedColor,
                ),
              if (i < items.length - 1) const SizedBox(width: 6),
            ],
          ],
        ),
      ),
    );
  }
}