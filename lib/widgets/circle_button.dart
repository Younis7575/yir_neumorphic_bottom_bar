import 'package:flutter/material.dart';

/// Unselected circle button widget
class CircleButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color? unselectedColor;

  const CircleButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.unselectedColor,
  });

  @override
  State<CircleButton> createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) {
        setState(() => _pressed = false);
        widget.onTap();
      },
      onTapCancel: () => setState(() => _pressed = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 120),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFFB6C2D0),
          shape: BoxShape.circle,
          boxShadow: _pressed
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.18),
                    offset: const Offset(2, 2),
                    blurRadius: 4,
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.85),
                    offset: const Offset(-4, -4),
                    blurRadius: 8,
                  ),
                  BoxShadow(
                    color: const Color(0xFF8A97A5).withOpacity(0.65),
                    offset: const Offset(4, 4),
                    blurRadius: 8,
                  ),
                ],
        ),
        child: Icon(
          widget.icon,
          size: 20,
          color: widget.unselectedColor ?? const Color(0xFF858E98),
        ),
      ),
    );
  }
}