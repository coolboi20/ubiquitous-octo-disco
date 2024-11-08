import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:boost/components/navigation_icon.dart';
import 'package:widgetbook_workspace/knobs/icon_knob.dart';

@widgetbook.UseCase(
  designLink: 'https://www.figma.com/file/LuHhOTyQBglXOYK5b5VRSM/Widget-book-test?node-id=2019-602',
  name: 'Default',
  type: NavigationIcon
)
Widget defaultNavigationIconUseCase(BuildContext context) {
  return NavigationIcon(
    icon: context.knobs.icon(
      label: 'Icon',
      initialValue: Icons.home,
    ),
    color: context.knobs.color(
        label: 'Icon Color',
      initialValue: Colors.grey,
    ),
    size: context.knobs.double.slider(
      label:'Icon Size',
      initialValue: 24.0,
      min: 16.0,
      max: 48.0,
    ),
  );
}

@widgetbook.UseCase(
    designLink: 'https://www.figma.com/file/LuHhOTyQBglXOYK5b5VRSM/Widget-book-test?node-id=2019-602',
    name: 'Selected',
    type: NavigationIcon
)
Widget selectedNavigationIconUseCase(BuildContext context) {
  return NavigationIcon(
    icon: context.knobs.icon(
      label: 'Icon',
      initialValue: Icons.home,
    ),
    color: context.knobs.color(
      label: 'Icon Color',
      initialValue: Colors.black,
    ),
    size: context.knobs.double.slider(
      label:'Icon Size',
      initialValue: 24.0,
      min: 16.0,
      max: 48.0,
    ),
  );
}