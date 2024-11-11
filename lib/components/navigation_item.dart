
import 'package:boost/components/navigation_icon.dart';
import 'package:boost/components/navigation_label.dart';
import 'package:flutter/material.dart';

class NavigationItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const NavigationItem({
    super.key,
    required this.icon,
    required this.label,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NavigationIcon(
              icon: icon,
              color: isSelected ? Colors.black : Colors.grey,
          ),
          NavigationLabel(
              label: label,
              color: isSelected ? Colors.black : Colors.grey,
          ),
        ],
      ),
    );
  }

}