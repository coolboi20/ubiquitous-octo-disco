
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class IconKnob extends Knob<IconData> {

  IconKnob({
    required String label,
    required IconData initialValue,
  }) : super(
    label: label,
    initialValue: initialValue,
  );

  @override
  List<Field> get fields => [
    ListField<IconData>(
      name: label,
      values: [
        Icons.home,
        Icons.inbox,
        Icons.settings,
        Icons.person,
      ],
      initialValue: initialValue,
    ),
  ];

  @override
  IconData valueFromQueryGroup(Map<String, String> group) {
    final selectedValue = group[label];
    final icons = [
      Icons.home,
      Icons.inbox,
      Icons.settings,
      Icons.person,
    ];
    return icons.firstWhere(
        (icon) => icon.toString() == selectedValue,
      orElse: () => initialValue,
    );
  }
}

extension IconKnobBuilder on KnobsBuilder {
  IconData icon({
    required String label,
    required IconData initialValue,
  }) {
    return onKnobAdded(
      IconKnob(
          label: label,
          initialValue: initialValue,
      ),
    )!;
  }
}