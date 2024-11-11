
import 'package:flutter/material.dart';

class NavigationLabel extends StatelessWidget {
  final String label;
  final Color color;
  final double size;

  const NavigationLabel({super.key,
    required this.label,
    this.color = Colors.green,
    this.size = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}