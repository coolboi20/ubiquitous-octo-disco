// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/cool_button.dart' as _i2;
import 'package:widgetbook_workspace/navigation_icon_use_cases.dart' as _i3;
import 'package:widgetbook_workspace/navigation_item_use_cases.dart' as _i4;
import 'package:widgetbook_workspace/navigation_label_use_cases.dart' as _i5;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookComponent(
    name: 'CoolButton',
    useCases: [
      _i1.WidgetbookUseCase(
        name: 'Default',
        builder: _i2.secondaryButton,
      ),
      _i1.WidgetbookUseCase(
        name: 'Disabled',
        builder: _i2.disabledButton,
      ),
      _i1.WidgetbookUseCase(
        name: 'Primary',
        builder: _i2.primaryButton,
        designLink:
            'https://www.figma.com/file/LuHhOTyQBglXOYK5b5VRSM/Widget-book-test?node-id=2001-221',
      ),
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'components',
    children: [
      _i1.WidgetbookComponent(
        name: 'NavigationIcon',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Default',
            builder: _i3.defaultNavigationIconUseCase,
            designLink:
                'https://www.figma.com/file/LuHhOTyQBglXOYK5b5VRSM/Widget-book-test?node-id=2019-602',
          ),
          _i1.WidgetbookUseCase(
            name: 'Selected',
            builder: _i3.selectedNavigationIconUseCase,
            designLink:
                'https://www.figma.com/file/LuHhOTyQBglXOYK5b5VRSM/Widget-book-test?node-id=2019-602',
          ),
        ],
      ),
      _i1.WidgetbookLeafComponent(
        name: 'NavigationItem',
        useCase: _i1.WidgetbookUseCase(
          name: 'Toggle Selection',
          builder: _i4.defaultNavigationItemUseCase,
          designLink:
              'https://www.figma.com/file/LuHhOTyQBglXOYK5b5VRSM/Widget-book-test?node-id=2033-185',
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'NavigationLabel',
        useCase: _i1.WidgetbookUseCase(
          name: 'Default',
          builder: _i5.defaultNavigationLabelUseCase,
          designLink:
              'https://www.figma.com/file/LuHhOTyQBglXOYK5b5VRSM/Widget-book-test?node-id=2031-113',
        ),
      ),
    ],
  ),
];
