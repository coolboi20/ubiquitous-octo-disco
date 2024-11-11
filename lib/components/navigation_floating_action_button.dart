
import 'package:boost/components/navigation_icon.dart';
import 'package:flutter/material.dart';

class NavigationFloatingActionButton extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final VoidCallback onPressed;
  final double iconSize;
  final double size;
  final OutlinedBorder shape;

  const NavigationFloatingActionButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor = Colors.blue,
    this.iconColor = Colors.white,
    this.iconSize = 24.0,
    this.size = 56.0,
    this.shape = const CircleBorder(),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: FloatingActionButton(
          shape: shape,
          onPressed: onPressed,
          backgroundColor: backgroundColor,
          child: NavigationIcon(
              icon: icon,
              color: iconColor,
              size: iconSize,
          ),
      ),
    );
  }

}