import 'package:flutter/material.dart';

class NavigationIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;

  const NavigationIcon({
    required this.icon,
    this.color = Colors.grey,
    this.size = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: color, size: size,);
  }
}