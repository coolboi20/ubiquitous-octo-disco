import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:boost/components/navigation_item.dart';

// TODO: Implement a slider for flexibility
@widgetbook.UseCase(
  designLink: 'https://www.figma.com/file/LuHhOTyQBglXOYK5b5VRSM/Widget-book-test?node-id=2033-185',
  name: 'Toggle Selection',
  type: NavigationItem,
)
Widget defaultNavigationItemUseCase(BuildContext context) {

  final isSelectedNotifier = ValueNotifier<bool>(false);

  return ValueListenableBuilder<bool>(
    valueListenable: isSelectedNotifier,
    builder: (context, isSelected, child) {
      return NavigationItem(
          icon: Icons.person,
          label: "Profile",
          isSelected: isSelected,
          onTap: () {
            isSelectedNotifier.value = !isSelectedNotifier.value;
          },
      );
    }
  );
}