import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:boost/components/navigation_label.dart';
import 'package:widgetbook/widgetbook.dart';

@widgetbook.UseCase(
    designLink: 'https://www.figma.com/file/LuHhOTyQBglXOYK5b5VRSM/Widget-book-test?node-id=2031-113',
    name: 'Default',
    type: NavigationLabel
)
Widget defaultNavigationLabelUseCase(BuildContext context) {
  return NavigationLabel(
    label: context.knobs.string(
        label: 'Text',
      initialValue: 'Hello World',
    ),
    color: context.knobs.color(
        label: 'Label Color',
        initialValue: Colors.black,
    ),
    size: context.knobs.double.slider(
        label: 'Label Size',
      initialValue: 12.0,
      min: 4.0,
      max: 60.0,
    ),
  );
}