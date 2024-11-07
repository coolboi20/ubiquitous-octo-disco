import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:boost/components/navigation_icon.dart';

@widgetbook.UseCase(
  designLink: 'https://www.figma.com/file/LuHhOTyQBglXOYK5b5VRSM/Widget-book-test?node-id=2019-602',
  name: 'Default',
  type: NavigationIcon
)
Widget defaultNavigationIconUseCase(BuildContext context) {
  return const NavigationIcon(
    icon: Icons.home,
    color: Colors.grey,
    size: 24.0,
  );
}

@widgetbook.UseCase(
    designLink: 'https://www.figma.com/file/LuHhOTyQBglXOYK5b5VRSM/Widget-book-test?node-id=2019-602',
    name: 'Selected',
    type: NavigationIcon
)
Widget selectedNavigationIconUseCase(BuildContext context) {
  return const NavigationIcon(
    icon: Icons.home,
    color: Colors.black,
    size: 24.0,
  );
}