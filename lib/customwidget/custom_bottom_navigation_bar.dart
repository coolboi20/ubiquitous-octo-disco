import 'package:boost/components/navigation_item.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  final Color backgroundColor;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
    this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: backgroundColor,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavigationItem(
              icon: Icons.home,
              label: "Home",
              isSelected: selectedIndex == 0,
              onTap: () => onItemTapped(0),
          ),
          NavigationItem(
              icon: Icons.inbox,
              label: "Inbox",
              isSelected: selectedIndex == 1,
              onTap: () => onItemTapped(1),
          ),
          SizedBox(
            width: 40,
          ),
          NavigationItem(
              icon: Icons.settings,
              label: "Settings",
              isSelected: selectedIndex == 2,
              onTap: () => onItemTapped(2),
          ),
          NavigationItem(
              icon: Icons.person,
              label: "Profile",
              isSelected: selectedIndex == 3,
              onTap: () => onItemTapped(3),
          ),
        ],
      ),
    );
  }
}
