import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Import the widget from your app
import 'package:boost/cool_button.dart';

@widgetbook.UseCase(
    designLink: 'https://www.figma.com/file/LuHhOTyQBglXOYK5b5VRSM/Widget-book-test?node-id=2001-221',
    name: 'Primary',
    type: CoolButton
)
Widget primaryButton(BuildContext context) {
  return const CoolButton(
      text: 'Primary',
      state: ButtonState.primary
  );
}

@widgetbook.UseCase(name: 'Default', type: CoolButton)
Widget secondaryButton(BuildContext context) {
  return const CoolButton(
      text: 'Secondary',
      state: ButtonState.secondary
  );
}

@widgetbook.UseCase(name: 'Disabled', type: CoolButton)
Widget disabledButton(BuildContext context) {
  return const CoolButton(
    text: 'Disabled',
    state: ButtonState.disabled,
  );
}
